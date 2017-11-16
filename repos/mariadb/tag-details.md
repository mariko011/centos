<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.33`](#mariadb10033)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.29`](#mariadb10129)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.10`](#mariadb10210)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.2`](#mariadb1032)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.58`](#mariadb5558)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:338258203d1466202d2332e6f6860a3dd24d3bf3578c1e6999c847c975f7e4ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:4fa0a45fdbe17c0f83a1fa3d3b3943fa5b294b274b7c37185873df56f99ac999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135227218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcee1d29aacc1a5fcf0cb7de90badcbb43063c522cbb3315ba3db92e6d965ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Thu, 16 Nov 2017 00:41:06 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:41:43 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:41:43 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:41:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:41:48 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:41:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5024f663c035365b23584d891192048bdf9be3b64e99176fad8ddb207f1fbca7`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc69980fbc042a90a4486d87810cda461a1b1b8ad316bbbae14afb8600d9addf`  
		Last Modified: Thu, 16 Nov 2017 00:46:09 GMT  
		Size: 74.9 MB (74949940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57f4562fa50b5bde231ea6608c6c50ad03ae8b36213fcd1d6f0440267ed085e`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 2.6 KB (2555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c749b145afb630f9411ee8553419f5ffdcf09b6fcb485e57b43f67755bac83`  
		Last Modified: Thu, 16 Nov 2017 00:45:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:30c2a7cd8147787955478b5e75d7e5f04db4a0d0917ddc22ccfcb55773eda93a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:111cc94569b82b545d94d3bb8c9c16f29b07cd35c062c27d82c88166ac66c76c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119546485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eecd58425049beb2da63ca3e49eac1f08a9aa3f42f5e02598ff0eaed038a8dc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:43:16 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 16 Nov 2017 00:43:16 GMT
ENV MARIADB_VERSION=10.0.33+maria-1~jessie
# Thu, 16 Nov 2017 00:43:17 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:43:56 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:43:56 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:43:56 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:43:57 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:43:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03508ff3b7c9c32366ecbd2215089a4a27f659fd50b73a09c17f4b0990196dc`  
		Last Modified: Thu, 16 Nov 2017 00:47:16 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f979cad17a3739b285432120fd37289efa45a846ffdae1adbd53752b8ac434e`  
		Last Modified: Thu, 16 Nov 2017 00:47:26 GMT  
		Size: 59.3 MB (59269213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65770ae6b44ed1f1f62ebc7403cb52677ae425bde9b63fbdc67376139f3b8897`  
		Last Modified: Thu, 16 Nov 2017 00:47:16 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e581dea902f72d7fdf1958b0844561a1edff9899208503d1fc2b65401c1e3a`  
		Last Modified: Thu, 16 Nov 2017 00:47:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.33`

```console
$ docker pull mariadb@sha256:30c2a7cd8147787955478b5e75d7e5f04db4a0d0917ddc22ccfcb55773eda93a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.33` - linux; amd64

```console
$ docker pull mariadb@sha256:111cc94569b82b545d94d3bb8c9c16f29b07cd35c062c27d82c88166ac66c76c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119546485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eecd58425049beb2da63ca3e49eac1f08a9aa3f42f5e02598ff0eaed038a8dc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:43:16 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 16 Nov 2017 00:43:16 GMT
ENV MARIADB_VERSION=10.0.33+maria-1~jessie
# Thu, 16 Nov 2017 00:43:17 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:43:56 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:43:56 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:43:56 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:43:57 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:43:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03508ff3b7c9c32366ecbd2215089a4a27f659fd50b73a09c17f4b0990196dc`  
		Last Modified: Thu, 16 Nov 2017 00:47:16 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f979cad17a3739b285432120fd37289efa45a846ffdae1adbd53752b8ac434e`  
		Last Modified: Thu, 16 Nov 2017 00:47:26 GMT  
		Size: 59.3 MB (59269213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65770ae6b44ed1f1f62ebc7403cb52677ae425bde9b63fbdc67376139f3b8897`  
		Last Modified: Thu, 16 Nov 2017 00:47:16 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e581dea902f72d7fdf1958b0844561a1edff9899208503d1fc2b65401c1e3a`  
		Last Modified: Thu, 16 Nov 2017 00:47:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:7c9371d5f3dfa472fe6f7b211e4ab3a9ddf22fb654659ec3eea247a053eb36e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:5bc952839883a22290e67853a93eab9d05ad9a09ccca08d3e0914bc28d898804
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135183713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5bc0530c40cc9c8320a6b9e8679e2f9db91b67e09350163edc94effc256647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:42:03 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 16 Nov 2017 00:42:03 GMT
ENV MARIADB_VERSION=10.1.29+maria-1~jessie
# Thu, 16 Nov 2017 00:42:04 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:42:54 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:42:55 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:42:56 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:42:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:42:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:42:57 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:42:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9537bbd6ea5e770285aaa9b19051f6b6704172ea169b645e2c83fc8d621f4db2`  
		Last Modified: Thu, 16 Nov 2017 00:46:47 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34947a95f4ee346691b03946d7aae21f750543686b60852189007bea895e2e72`  
		Last Modified: Thu, 16 Nov 2017 00:46:58 GMT  
		Size: 74.9 MB (74906436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28abab99627af87b3d5b4cd983eb49ba7f35c5f5ef38019804d82d7fe62ebc5c`  
		Last Modified: Thu, 16 Nov 2017 00:46:47 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fff38afc71a277a7575e809b79ef2ad43118efc819a49093ffb277c8707272`  
		Last Modified: Thu, 16 Nov 2017 00:46:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.29`

```console
$ docker pull mariadb@sha256:7c9371d5f3dfa472fe6f7b211e4ab3a9ddf22fb654659ec3eea247a053eb36e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.29` - linux; amd64

```console
$ docker pull mariadb@sha256:5bc952839883a22290e67853a93eab9d05ad9a09ccca08d3e0914bc28d898804
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135183713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5bc0530c40cc9c8320a6b9e8679e2f9db91b67e09350163edc94effc256647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:42:03 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 16 Nov 2017 00:42:03 GMT
ENV MARIADB_VERSION=10.1.29+maria-1~jessie
# Thu, 16 Nov 2017 00:42:04 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:42:54 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:42:55 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:42:56 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:42:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:42:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:42:57 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:42:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9537bbd6ea5e770285aaa9b19051f6b6704172ea169b645e2c83fc8d621f4db2`  
		Last Modified: Thu, 16 Nov 2017 00:46:47 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34947a95f4ee346691b03946d7aae21f750543686b60852189007bea895e2e72`  
		Last Modified: Thu, 16 Nov 2017 00:46:58 GMT  
		Size: 74.9 MB (74906436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28abab99627af87b3d5b4cd983eb49ba7f35c5f5ef38019804d82d7fe62ebc5c`  
		Last Modified: Thu, 16 Nov 2017 00:46:47 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fff38afc71a277a7575e809b79ef2ad43118efc819a49093ffb277c8707272`  
		Last Modified: Thu, 16 Nov 2017 00:46:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:338258203d1466202d2332e6f6860a3dd24d3bf3578c1e6999c847c975f7e4ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:4fa0a45fdbe17c0f83a1fa3d3b3943fa5b294b274b7c37185873df56f99ac999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135227218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcee1d29aacc1a5fcf0cb7de90badcbb43063c522cbb3315ba3db92e6d965ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Thu, 16 Nov 2017 00:41:06 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:41:43 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:41:43 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:41:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:41:48 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:41:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5024f663c035365b23584d891192048bdf9be3b64e99176fad8ddb207f1fbca7`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc69980fbc042a90a4486d87810cda461a1b1b8ad316bbbae14afb8600d9addf`  
		Last Modified: Thu, 16 Nov 2017 00:46:09 GMT  
		Size: 74.9 MB (74949940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57f4562fa50b5bde231ea6608c6c50ad03ae8b36213fcd1d6f0440267ed085e`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 2.6 KB (2555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c749b145afb630f9411ee8553419f5ffdcf09b6fcb485e57b43f67755bac83`  
		Last Modified: Thu, 16 Nov 2017 00:45:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.10`

```console
$ docker pull mariadb@sha256:338258203d1466202d2332e6f6860a3dd24d3bf3578c1e6999c847c975f7e4ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.10` - linux; amd64

```console
$ docker pull mariadb@sha256:4fa0a45fdbe17c0f83a1fa3d3b3943fa5b294b274b7c37185873df56f99ac999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135227218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcee1d29aacc1a5fcf0cb7de90badcbb43063c522cbb3315ba3db92e6d965ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Thu, 16 Nov 2017 00:41:06 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:41:43 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:41:43 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:41:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:41:48 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:41:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5024f663c035365b23584d891192048bdf9be3b64e99176fad8ddb207f1fbca7`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc69980fbc042a90a4486d87810cda461a1b1b8ad316bbbae14afb8600d9addf`  
		Last Modified: Thu, 16 Nov 2017 00:46:09 GMT  
		Size: 74.9 MB (74949940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57f4562fa50b5bde231ea6608c6c50ad03ae8b36213fcd1d6f0440267ed085e`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 2.6 KB (2555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c749b145afb630f9411ee8553419f5ffdcf09b6fcb485e57b43f67755bac83`  
		Last Modified: Thu, 16 Nov 2017 00:45:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:a557f73ba0d8256864e18c53e176c82944a49b06282287a0c06e80143fece940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:5fa4a7a9d40778526b0b3797db344184a46a499bc7b7a768d875bbf6ae221c7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135495349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b45a7d28ad31f5b1df811a52563db2da4a25b30cec26eb0db655bb4278443c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:40:11 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 Nov 2017 00:40:11 GMT
ENV MARIADB_VERSION=10.3.2+maria~jessie
# Thu, 16 Nov 2017 00:40:12 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:40:47 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:40:48 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:40:48 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:40:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:40:49 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:40:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e7b5c7a166fbbec9be96d17bbbc54ae46cf1534af42d544dcc8cd85cc3a40f`  
		Last Modified: Thu, 16 Nov 2017 00:45:16 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1a53cec42bfae609b05bba8eab711532b46194cea2276d891cd63fa53de786`  
		Last Modified: Thu, 16 Nov 2017 00:45:32 GMT  
		Size: 75.2 MB (75218073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f74f6b977387703af01065551a2ad10a3707f6c7051aee096d479b486c2b56`  
		Last Modified: Thu, 16 Nov 2017 00:45:16 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb26919790ef3b24a3b272bb24cfdf41c3ac7faa271efec1536919a854e15f5`  
		Last Modified: Thu, 16 Nov 2017 00:45:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.2`

```console
$ docker pull mariadb@sha256:a557f73ba0d8256864e18c53e176c82944a49b06282287a0c06e80143fece940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.2` - linux; amd64

```console
$ docker pull mariadb@sha256:5fa4a7a9d40778526b0b3797db344184a46a499bc7b7a768d875bbf6ae221c7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135495349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b45a7d28ad31f5b1df811a52563db2da4a25b30cec26eb0db655bb4278443c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:40:11 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 16 Nov 2017 00:40:11 GMT
ENV MARIADB_VERSION=10.3.2+maria~jessie
# Thu, 16 Nov 2017 00:40:12 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:40:47 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:40:48 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:40:48 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:40:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:40:49 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:40:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e7b5c7a166fbbec9be96d17bbbc54ae46cf1534af42d544dcc8cd85cc3a40f`  
		Last Modified: Thu, 16 Nov 2017 00:45:16 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1a53cec42bfae609b05bba8eab711532b46194cea2276d891cd63fa53de786`  
		Last Modified: Thu, 16 Nov 2017 00:45:32 GMT  
		Size: 75.2 MB (75218073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f74f6b977387703af01065551a2ad10a3707f6c7051aee096d479b486c2b56`  
		Last Modified: Thu, 16 Nov 2017 00:45:16 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb26919790ef3b24a3b272bb24cfdf41c3ac7faa271efec1536919a854e15f5`  
		Last Modified: Thu, 16 Nov 2017 00:45:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:c29a0b6d4c4be8a592c79dc0b7bab83c4650bec4623151df7724d2b9f6716dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:7fde7cc6baf5b7b03f4cee1372e101976ec3fc6cc562e12adc37feb33a906e41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98134753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac280450bcfe4c41a5797e9126547d610f462880a02dd63df40a08c2b1928c07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:00:41 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:44:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:44:24 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:44:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:44:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:44:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:44:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:44:39 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:44:39 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 16 Nov 2017 00:44:39 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Thu, 16 Nov 2017 00:44:40 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:44:57 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:45:00 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:45:00 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:45:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:45:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:45:05 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:45:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e38a17f15a3b7adc07f080ae91d1ea475db782c8c50635d3516215feab9a4b3`  
		Last Modified: Sat, 04 Nov 2017 17:04:50 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278c9eb094924a25460e0d03213a2527c73e24b2ac97e6fcc8f1fd7bbf41b4c1`  
		Last Modified: Thu, 16 Nov 2017 00:47:47 GMT  
		Size: 939.5 KB (939465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6715ab51a5bf0b17e603d75898132521c57d99a4b2e686d7f1d105adfe688c3`  
		Last Modified: Thu, 16 Nov 2017 00:47:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3687bad3dc81b64c0412968ef54e0211c84566cf8d005cf6228bd3e19bff44eb`  
		Last Modified: Thu, 16 Nov 2017 00:47:47 GMT  
		Size: 6.0 MB (5992946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606294261dea1ce1ee510097cce21258bb0ed03027cf11b8caadfa49fba07572`  
		Last Modified: Thu, 16 Nov 2017 00:47:46 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f50105320923ff37c8833b0c9010216707b66754bc3d6486ea91b309027924`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f1193947a605492acf1cb05ba41204b7a28ac85a4f1233bb72fdd1bd8d657`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fc0134bcf79c995b36098616cbb7ff7f5a93c93ef3c2c81194ecf139ae43b5`  
		Last Modified: Thu, 16 Nov 2017 00:47:53 GMT  
		Size: 53.1 MB (53073178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918c2401e2156f24fd15d0dde5c26a31ce0de131ed669c7c03c6c63fb6c62fc4`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ee9b6fcbbc37534e5a66c068e575e59b5de917ad055b4f551a1a2a44555100`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:c29a0b6d4c4be8a592c79dc0b7bab83c4650bec4623151df7724d2b9f6716dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:7fde7cc6baf5b7b03f4cee1372e101976ec3fc6cc562e12adc37feb33a906e41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98134753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac280450bcfe4c41a5797e9126547d610f462880a02dd63df40a08c2b1928c07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:00:41 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:44:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:44:24 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:44:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:44:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:44:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:44:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:44:39 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:44:39 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 16 Nov 2017 00:44:39 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Thu, 16 Nov 2017 00:44:40 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:44:57 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:45:00 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:45:00 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:45:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:45:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:45:05 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:45:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e38a17f15a3b7adc07f080ae91d1ea475db782c8c50635d3516215feab9a4b3`  
		Last Modified: Sat, 04 Nov 2017 17:04:50 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278c9eb094924a25460e0d03213a2527c73e24b2ac97e6fcc8f1fd7bbf41b4c1`  
		Last Modified: Thu, 16 Nov 2017 00:47:47 GMT  
		Size: 939.5 KB (939465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6715ab51a5bf0b17e603d75898132521c57d99a4b2e686d7f1d105adfe688c3`  
		Last Modified: Thu, 16 Nov 2017 00:47:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3687bad3dc81b64c0412968ef54e0211c84566cf8d005cf6228bd3e19bff44eb`  
		Last Modified: Thu, 16 Nov 2017 00:47:47 GMT  
		Size: 6.0 MB (5992946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606294261dea1ce1ee510097cce21258bb0ed03027cf11b8caadfa49fba07572`  
		Last Modified: Thu, 16 Nov 2017 00:47:46 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f50105320923ff37c8833b0c9010216707b66754bc3d6486ea91b309027924`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f1193947a605492acf1cb05ba41204b7a28ac85a4f1233bb72fdd1bd8d657`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fc0134bcf79c995b36098616cbb7ff7f5a93c93ef3c2c81194ecf139ae43b5`  
		Last Modified: Thu, 16 Nov 2017 00:47:53 GMT  
		Size: 53.1 MB (53073178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918c2401e2156f24fd15d0dde5c26a31ce0de131ed669c7c03c6c63fb6c62fc4`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ee9b6fcbbc37534e5a66c068e575e59b5de917ad055b4f551a1a2a44555100`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.58`

```console
$ docker pull mariadb@sha256:c29a0b6d4c4be8a592c79dc0b7bab83c4650bec4623151df7724d2b9f6716dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.58` - linux; amd64

```console
$ docker pull mariadb@sha256:7fde7cc6baf5b7b03f4cee1372e101976ec3fc6cc562e12adc37feb33a906e41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98134753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac280450bcfe4c41a5797e9126547d610f462880a02dd63df40a08c2b1928c07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:00:41 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:44:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:44:24 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:44:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:44:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:44:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:44:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:44:39 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:44:39 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 16 Nov 2017 00:44:39 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Thu, 16 Nov 2017 00:44:40 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:44:57 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:45:00 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:45:00 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:45:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:45:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:45:05 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:45:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e38a17f15a3b7adc07f080ae91d1ea475db782c8c50635d3516215feab9a4b3`  
		Last Modified: Sat, 04 Nov 2017 17:04:50 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278c9eb094924a25460e0d03213a2527c73e24b2ac97e6fcc8f1fd7bbf41b4c1`  
		Last Modified: Thu, 16 Nov 2017 00:47:47 GMT  
		Size: 939.5 KB (939465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6715ab51a5bf0b17e603d75898132521c57d99a4b2e686d7f1d105adfe688c3`  
		Last Modified: Thu, 16 Nov 2017 00:47:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3687bad3dc81b64c0412968ef54e0211c84566cf8d005cf6228bd3e19bff44eb`  
		Last Modified: Thu, 16 Nov 2017 00:47:47 GMT  
		Size: 6.0 MB (5992946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606294261dea1ce1ee510097cce21258bb0ed03027cf11b8caadfa49fba07572`  
		Last Modified: Thu, 16 Nov 2017 00:47:46 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f50105320923ff37c8833b0c9010216707b66754bc3d6486ea91b309027924`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f1193947a605492acf1cb05ba41204b7a28ac85a4f1233bb72fdd1bd8d657`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fc0134bcf79c995b36098616cbb7ff7f5a93c93ef3c2c81194ecf139ae43b5`  
		Last Modified: Thu, 16 Nov 2017 00:47:53 GMT  
		Size: 53.1 MB (53073178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918c2401e2156f24fd15d0dde5c26a31ce0de131ed669c7c03c6c63fb6c62fc4`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ee9b6fcbbc37534e5a66c068e575e59b5de917ad055b4f551a1a2a44555100`  
		Last Modified: Thu, 16 Nov 2017 00:47:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:338258203d1466202d2332e6f6860a3dd24d3bf3578c1e6999c847c975f7e4ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:4fa0a45fdbe17c0f83a1fa3d3b3943fa5b294b274b7c37185873df56f99ac999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135227218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcee1d29aacc1a5fcf0cb7de90badcbb43063c522cbb3315ba3db92e6d965ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 16 Nov 2017 00:39:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 16 Nov 2017 00:39:45 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 16 Nov 2017 00:39:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Nov 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:40:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 16 Nov 2017 00:40:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 16 Nov 2017 00:40:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_MAJOR=10.2
# Thu, 16 Nov 2017 00:41:05 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Thu, 16 Nov 2017 00:41:06 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 16 Nov 2017 00:41:43 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 16 Nov 2017 00:41:43 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Nov 2017 00:41:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:41:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Nov 2017 00:41:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Nov 2017 00:41:48 GMT
EXPOSE 3306/tcp
# Thu, 16 Nov 2017 00:41:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5671503d4f93a519cf211982c698f0185372a3818c88ae153fecccebccb02d2c`  
		Last Modified: Sat, 04 Nov 2017 05:36:46 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62466fedcc9de3f1b9a23a3f2e8ceb480da865e89bf2c2dd49c375838d5c8b24`  
		Last Modified: Thu, 16 Nov 2017 00:45:21 GMT  
		Size: 985.1 KB (985127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef8399f3aa25b69d8082c992293c45b3b796a27543383a6e500c8dd60c02fc`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b2cf62e1dbbe275d7faa9b7c3eb01a80e88484741098bc797d501e2a65f68`  
		Last Modified: Thu, 16 Nov 2017 00:45:20 GMT  
		Size: 6.7 MB (6670678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7291500bf8263c5ed848a18e2cb353b71465bc264aa328be7e845df47b5c1d9e`  
		Last Modified: Thu, 16 Nov 2017 00:45:19 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77c97e1ff71cc907a7e7c12e7760e2a37f8dd9beee417df85053652c10e6576`  
		Last Modified: Thu, 16 Nov 2017 00:45:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5024f663c035365b23584d891192048bdf9be3b64e99176fad8ddb207f1fbca7`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc69980fbc042a90a4486d87810cda461a1b1b8ad316bbbae14afb8600d9addf`  
		Last Modified: Thu, 16 Nov 2017 00:46:09 GMT  
		Size: 74.9 MB (74949940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57f4562fa50b5bde231ea6608c6c50ad03ae8b36213fcd1d6f0440267ed085e`  
		Last Modified: Thu, 16 Nov 2017 00:45:57 GMT  
		Size: 2.6 KB (2555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c749b145afb630f9411ee8553419f5ffdcf09b6fcb485e57b43f67755bac83`  
		Last Modified: Thu, 16 Nov 2017 00:45:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
