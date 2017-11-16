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
$ docker pull mariadb@sha256:c25fb0ada1733c736e13994d210e77b93562fdf61abdd8cb9d32e9f1489a9fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:296475a5e93ab03af628433389a301016891fa40bdfa95456ab1f34f710c05f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135545218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcf8c1a96d211687e889530078079d1ee67d04a9eef4c16aa3e2566e71abdcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:57:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 16:57:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:57:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 16:58:12 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 04 Nov 2017 16:58:12 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Sat, 04 Nov 2017 16:58:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 16:58:45 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 16:58:45 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 16:58:45 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:58:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 16:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:58:46 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 16:58:46 GMT
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
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab247c7432b9b97fbaf1e36b32bc394cc381d2cdbe01a31c0ad5493ebf4b18ab`  
		Last Modified: Sat, 04 Nov 2017 17:01:48 GMT  
		Size: 20.8 KB (20828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437523d039638e148818bb3ceabd9e42bfd1e613b5ca3cd3040cfcdaebbf609`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02185372c549df42a3d27c55dad6bc68db68ec255faba7865f6d363d0eee294c`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8416aab538777b6d426cbb54c977903cae16b508f8d17938834ac8624771d4`  
		Last Modified: Sat, 04 Nov 2017 17:02:35 GMT  
		Size: 75.0 MB (74950152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10247ed22fa37c1ee86538451236709352644a58ed7ffebe794b3f6c831b07e9`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e5b5aa0b7c8351d01728d0a9608dfad07d96da8c8b5076825baf4617340ba`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:dc1d59c0b9419667b4d8892e9f5dd00bb54655f8113982cb959999a2a084b19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:212e4187ba4463591ea0312d6d5d87354e73165ba1c393a102280e0eff7ce592
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119864150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e15695aeb546598600593444d9936807a829f911a0e8ca30aadbd515b8f01c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:57:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 16:57:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:57:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 16:59:51 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 04 Nov 2017 16:59:51 GMT
ENV MARIADB_VERSION=10.0.33+maria-1~jessie
# Sat, 04 Nov 2017 16:59:52 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 17:00:36 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 17:00:36 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 17:00:36 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 17:00:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 17:00:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 17:00:37 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 17:00:38 GMT
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
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab247c7432b9b97fbaf1e36b32bc394cc381d2cdbe01a31c0ad5493ebf4b18ab`  
		Last Modified: Sat, 04 Nov 2017 17:01:48 GMT  
		Size: 20.8 KB (20828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437523d039638e148818bb3ceabd9e42bfd1e613b5ca3cd3040cfcdaebbf609`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441c6817c79d5ae00ab7ca77063ba086e8856984c4d40e472bd72582ffbdce82`  
		Last Modified: Sat, 04 Nov 2017 17:04:16 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31e4e54e9597fe0a93e3c4060ac2ab22418b666d6b7f9326531769d4dd2b2c3`  
		Last Modified: Sat, 04 Nov 2017 17:04:28 GMT  
		Size: 59.3 MB (59269082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b7c02ecc69cd5f5fb400ebe133e7c43db5f5efcf2aca0b6c000210df87c9c4`  
		Last Modified: Sat, 04 Nov 2017 17:04:15 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51686ee8af5e7387abc8a14129d10244e71abad9a449a03493b89ec3981b7867`  
		Last Modified: Sat, 04 Nov 2017 17:04:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.33`

```console
$ docker pull mariadb@sha256:dc1d59c0b9419667b4d8892e9f5dd00bb54655f8113982cb959999a2a084b19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.33` - linux; amd64

```console
$ docker pull mariadb@sha256:212e4187ba4463591ea0312d6d5d87354e73165ba1c393a102280e0eff7ce592
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119864150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e15695aeb546598600593444d9936807a829f911a0e8ca30aadbd515b8f01c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:57:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 16:57:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:57:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 16:59:51 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 04 Nov 2017 16:59:51 GMT
ENV MARIADB_VERSION=10.0.33+maria-1~jessie
# Sat, 04 Nov 2017 16:59:52 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 17:00:36 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 17:00:36 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 17:00:36 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 17:00:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 17:00:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 17:00:37 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 17:00:38 GMT
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
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab247c7432b9b97fbaf1e36b32bc394cc381d2cdbe01a31c0ad5493ebf4b18ab`  
		Last Modified: Sat, 04 Nov 2017 17:01:48 GMT  
		Size: 20.8 KB (20828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437523d039638e148818bb3ceabd9e42bfd1e613b5ca3cd3040cfcdaebbf609`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441c6817c79d5ae00ab7ca77063ba086e8856984c4d40e472bd72582ffbdce82`  
		Last Modified: Sat, 04 Nov 2017 17:04:16 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31e4e54e9597fe0a93e3c4060ac2ab22418b666d6b7f9326531769d4dd2b2c3`  
		Last Modified: Sat, 04 Nov 2017 17:04:28 GMT  
		Size: 59.3 MB (59269082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b7c02ecc69cd5f5fb400ebe133e7c43db5f5efcf2aca0b6c000210df87c9c4`  
		Last Modified: Sat, 04 Nov 2017 17:04:15 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51686ee8af5e7387abc8a14129d10244e71abad9a449a03493b89ec3981b7867`  
		Last Modified: Sat, 04 Nov 2017 17:04:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:6cef4058a2c391dfd621939ecf7dfa325ece33e019011e32b34faae03782b5c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:d78e59ef8088ee852d1901048b7fd2346f49468cb60c9ad4807c49a241a616a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134922124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b6542a2315ed27e4f7b8479d901b4c143dcfbfe9b99b6bf99e1cb174c14742`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:57:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 16:57:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:57:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 16:58:52 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 04 Nov 2017 16:58:54 GMT
ENV MARIADB_VERSION=10.1.28+maria-1~jessie
# Sat, 04 Nov 2017 16:58:54 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 16:59:42 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 16:59:43 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 16:59:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:59:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 16:59:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:59:44 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 16:59:44 GMT
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
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab247c7432b9b97fbaf1e36b32bc394cc381d2cdbe01a31c0ad5493ebf4b18ab`  
		Last Modified: Sat, 04 Nov 2017 17:01:48 GMT  
		Size: 20.8 KB (20828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437523d039638e148818bb3ceabd9e42bfd1e613b5ca3cd3040cfcdaebbf609`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f1cd309c5dfc7f67b19b0c3fdc5cc3863b773f91ce7ef741b4361cc58bb607`  
		Last Modified: Sat, 04 Nov 2017 17:03:24 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805f2d349cda63d98592aca7c2f0c706b0506c1f6caad4f25a80d9ecce325d31`  
		Last Modified: Sat, 04 Nov 2017 17:03:40 GMT  
		Size: 74.3 MB (74327062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eeafe97a37adc0e68c9564f231555e342ec171f7f85feb76270cfdc40c641e3`  
		Last Modified: Sat, 04 Nov 2017 17:03:24 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba2799c12c6f3f37b53f6565dc4af524a1c56adf1ec263302d9f750035a9261`  
		Last Modified: Sat, 04 Nov 2017 17:03:24 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.29`

**does not exist** (yet?)

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:c25fb0ada1733c736e13994d210e77b93562fdf61abdd8cb9d32e9f1489a9fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:296475a5e93ab03af628433389a301016891fa40bdfa95456ab1f34f710c05f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135545218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcf8c1a96d211687e889530078079d1ee67d04a9eef4c16aa3e2566e71abdcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:57:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 16:57:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:57:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 16:58:12 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 04 Nov 2017 16:58:12 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Sat, 04 Nov 2017 16:58:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 16:58:45 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 16:58:45 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 16:58:45 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:58:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 16:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:58:46 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 16:58:46 GMT
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
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab247c7432b9b97fbaf1e36b32bc394cc381d2cdbe01a31c0ad5493ebf4b18ab`  
		Last Modified: Sat, 04 Nov 2017 17:01:48 GMT  
		Size: 20.8 KB (20828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437523d039638e148818bb3ceabd9e42bfd1e613b5ca3cd3040cfcdaebbf609`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02185372c549df42a3d27c55dad6bc68db68ec255faba7865f6d363d0eee294c`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8416aab538777b6d426cbb54c977903cae16b508f8d17938834ac8624771d4`  
		Last Modified: Sat, 04 Nov 2017 17:02:35 GMT  
		Size: 75.0 MB (74950152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10247ed22fa37c1ee86538451236709352644a58ed7ffebe794b3f6c831b07e9`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e5b5aa0b7c8351d01728d0a9608dfad07d96da8c8b5076825baf4617340ba`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.10`

```console
$ docker pull mariadb@sha256:c25fb0ada1733c736e13994d210e77b93562fdf61abdd8cb9d32e9f1489a9fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.10` - linux; amd64

```console
$ docker pull mariadb@sha256:296475a5e93ab03af628433389a301016891fa40bdfa95456ab1f34f710c05f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135545218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcf8c1a96d211687e889530078079d1ee67d04a9eef4c16aa3e2566e71abdcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:57:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 16:57:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:57:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 16:58:12 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 04 Nov 2017 16:58:12 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Sat, 04 Nov 2017 16:58:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 16:58:45 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 16:58:45 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 16:58:45 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:58:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 16:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:58:46 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 16:58:46 GMT
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
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab247c7432b9b97fbaf1e36b32bc394cc381d2cdbe01a31c0ad5493ebf4b18ab`  
		Last Modified: Sat, 04 Nov 2017 17:01:48 GMT  
		Size: 20.8 KB (20828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437523d039638e148818bb3ceabd9e42bfd1e613b5ca3cd3040cfcdaebbf609`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02185372c549df42a3d27c55dad6bc68db68ec255faba7865f6d363d0eee294c`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8416aab538777b6d426cbb54c977903cae16b508f8d17938834ac8624771d4`  
		Last Modified: Sat, 04 Nov 2017 17:02:35 GMT  
		Size: 75.0 MB (74950152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10247ed22fa37c1ee86538451236709352644a58ed7ffebe794b3f6c831b07e9`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e5b5aa0b7c8351d01728d0a9608dfad07d96da8c8b5076825baf4617340ba`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:77122f41c99d4ef4fd57da6c88b78f4854ef5209530256f445cc41920e2b94e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:5a93591c3f6c2bb3310e25b1545daf1333dfb712ed08013e2ee6d7c98a078320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135813232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6509834aa3758642ad69efb58f4f4d2dae6fa7ee298865de44517084588681c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:57:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 16:57:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:57:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 16:57:27 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 04 Nov 2017 16:57:28 GMT
ENV MARIADB_VERSION=10.3.2+maria~jessie
# Sat, 04 Nov 2017 16:57:28 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 16:58:01 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 16:58:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 16:58:03 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:58:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 16:58:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:58:04 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 16:58:04 GMT
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
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab247c7432b9b97fbaf1e36b32bc394cc381d2cdbe01a31c0ad5493ebf4b18ab`  
		Last Modified: Sat, 04 Nov 2017 17:01:48 GMT  
		Size: 20.8 KB (20828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437523d039638e148818bb3ceabd9e42bfd1e613b5ca3cd3040cfcdaebbf609`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4881480a1e3bd09585f2cf3671f9147382c2757cacee95fad04acceaa7140090`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6b20371690e72165cc592fc66f69837dca6506b7aaa8b044050cde6e0ac0fb`  
		Last Modified: Sat, 04 Nov 2017 17:02:02 GMT  
		Size: 75.2 MB (75218166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863132b268a14a46575f36e7c75c503cbc0753381eec0bb7bb775ee947014b9c`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d517f5c3fede92af805de2a282e40b163e19b80fdec0a444b5a358540ea5b9`  
		Last Modified: Sat, 04 Nov 2017 17:01:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.2`

```console
$ docker pull mariadb@sha256:77122f41c99d4ef4fd57da6c88b78f4854ef5209530256f445cc41920e2b94e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.2` - linux; amd64

```console
$ docker pull mariadb@sha256:5a93591c3f6c2bb3310e25b1545daf1333dfb712ed08013e2ee6d7c98a078320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135813232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6509834aa3758642ad69efb58f4f4d2dae6fa7ee298865de44517084588681c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:57:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 16:57:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:57:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 16:57:27 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 04 Nov 2017 16:57:28 GMT
ENV MARIADB_VERSION=10.3.2+maria~jessie
# Sat, 04 Nov 2017 16:57:28 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 16:58:01 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 16:58:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 16:58:03 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:58:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 16:58:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:58:04 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 16:58:04 GMT
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
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab247c7432b9b97fbaf1e36b32bc394cc381d2cdbe01a31c0ad5493ebf4b18ab`  
		Last Modified: Sat, 04 Nov 2017 17:01:48 GMT  
		Size: 20.8 KB (20828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437523d039638e148818bb3ceabd9e42bfd1e613b5ca3cd3040cfcdaebbf609`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4881480a1e3bd09585f2cf3671f9147382c2757cacee95fad04acceaa7140090`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6b20371690e72165cc592fc66f69837dca6506b7aaa8b044050cde6e0ac0fb`  
		Last Modified: Sat, 04 Nov 2017 17:02:02 GMT  
		Size: 75.2 MB (75218166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863132b268a14a46575f36e7c75c503cbc0753381eec0bb7bb775ee947014b9c`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d517f5c3fede92af805de2a282e40b163e19b80fdec0a444b5a358540ea5b9`  
		Last Modified: Sat, 04 Nov 2017 17:01:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:bf530b5ca2f4c893c76855a13146675fdd56edfc1dedd8d004916262d0ca138b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:e34a4ef2fc4a2063b2eaf0354548acbaf3a17f07056380694020e4ba4228d487
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98452738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c77c351222bf6229f8a415273750dae38e7814294d0aaaf823507968353d5d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:00:41 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 17:00:42 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 17:01:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:01:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 17:01:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:01:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 17:01:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 17:01:14 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 17:01:14 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 04 Nov 2017 17:01:14 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Sat, 04 Nov 2017 17:01:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 17:01:34 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 17:01:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 17:01:35 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 17:01:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 17:01:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 17:01:36 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 17:01:36 GMT
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
	-	`sha256:18a7b06bccdd830b4537cb27122496f1d2c5d5b051ebb61ce8899f5fc52de9af`  
		Last Modified: Sat, 04 Nov 2017 17:04:49 GMT  
		Size: 1.3 MB (1257704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dc960a9d5b637968b871d06440e176e8d099b73a3acff8c896481cedf648dc`  
		Last Modified: Sat, 04 Nov 2017 17:04:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3a7dd9cac3e01710a907a9cc37f19942f848a525771168a37c6d8231816076`  
		Last Modified: Sat, 04 Nov 2017 17:04:49 GMT  
		Size: 6.0 MB (5993007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774302c15e962f4620ce2648cb695f8698f15471a0a9ca8df4cfc22ce9647901`  
		Last Modified: Sat, 04 Nov 2017 17:04:47 GMT  
		Size: 20.9 KB (20862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38966ad813f3c19b27f7482c67645101a396e3492cd66de520d837b29c864b97`  
		Last Modified: Sat, 04 Nov 2017 17:04:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f9e8c78d4e57cf87fe4b4436338e380d97a07870001615fde6eb62f0cf5bd2`  
		Last Modified: Sat, 04 Nov 2017 17:04:46 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cab7bf387f44e816af03a52efa5b82a0df9fe271c1725710db765db0ca4830b`  
		Last Modified: Sat, 04 Nov 2017 17:04:58 GMT  
		Size: 53.1 MB (53072868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5818ccf39e348d118c252d8494a80756c6fcfe4fa17b6bf001d0e265a166633a`  
		Last Modified: Sat, 04 Nov 2017 17:04:46 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a63a9c726980f805e566c8befd5db238c706d5f50fe856ff630990610059ada`  
		Last Modified: Sat, 04 Nov 2017 17:04:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:bf530b5ca2f4c893c76855a13146675fdd56edfc1dedd8d004916262d0ca138b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:e34a4ef2fc4a2063b2eaf0354548acbaf3a17f07056380694020e4ba4228d487
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98452738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c77c351222bf6229f8a415273750dae38e7814294d0aaaf823507968353d5d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:00:41 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 17:00:42 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 17:01:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:01:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 17:01:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:01:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 17:01:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 17:01:14 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 17:01:14 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 04 Nov 2017 17:01:14 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Sat, 04 Nov 2017 17:01:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 17:01:34 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 17:01:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 17:01:35 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 17:01:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 17:01:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 17:01:36 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 17:01:36 GMT
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
	-	`sha256:18a7b06bccdd830b4537cb27122496f1d2c5d5b051ebb61ce8899f5fc52de9af`  
		Last Modified: Sat, 04 Nov 2017 17:04:49 GMT  
		Size: 1.3 MB (1257704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dc960a9d5b637968b871d06440e176e8d099b73a3acff8c896481cedf648dc`  
		Last Modified: Sat, 04 Nov 2017 17:04:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3a7dd9cac3e01710a907a9cc37f19942f848a525771168a37c6d8231816076`  
		Last Modified: Sat, 04 Nov 2017 17:04:49 GMT  
		Size: 6.0 MB (5993007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774302c15e962f4620ce2648cb695f8698f15471a0a9ca8df4cfc22ce9647901`  
		Last Modified: Sat, 04 Nov 2017 17:04:47 GMT  
		Size: 20.9 KB (20862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38966ad813f3c19b27f7482c67645101a396e3492cd66de520d837b29c864b97`  
		Last Modified: Sat, 04 Nov 2017 17:04:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f9e8c78d4e57cf87fe4b4436338e380d97a07870001615fde6eb62f0cf5bd2`  
		Last Modified: Sat, 04 Nov 2017 17:04:46 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cab7bf387f44e816af03a52efa5b82a0df9fe271c1725710db765db0ca4830b`  
		Last Modified: Sat, 04 Nov 2017 17:04:58 GMT  
		Size: 53.1 MB (53072868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5818ccf39e348d118c252d8494a80756c6fcfe4fa17b6bf001d0e265a166633a`  
		Last Modified: Sat, 04 Nov 2017 17:04:46 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a63a9c726980f805e566c8befd5db238c706d5f50fe856ff630990610059ada`  
		Last Modified: Sat, 04 Nov 2017 17:04:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.58`

```console
$ docker pull mariadb@sha256:bf530b5ca2f4c893c76855a13146675fdd56edfc1dedd8d004916262d0ca138b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.58` - linux; amd64

```console
$ docker pull mariadb@sha256:e34a4ef2fc4a2063b2eaf0354548acbaf3a17f07056380694020e4ba4228d487
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98452738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c77c351222bf6229f8a415273750dae38e7814294d0aaaf823507968353d5d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:00:41 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 17:00:42 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 17:01:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:01:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 17:01:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:01:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 17:01:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 17:01:14 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 17:01:14 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 04 Nov 2017 17:01:14 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Sat, 04 Nov 2017 17:01:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 17:01:34 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 17:01:35 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 17:01:35 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 17:01:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 17:01:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 17:01:36 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 17:01:36 GMT
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
	-	`sha256:18a7b06bccdd830b4537cb27122496f1d2c5d5b051ebb61ce8899f5fc52de9af`  
		Last Modified: Sat, 04 Nov 2017 17:04:49 GMT  
		Size: 1.3 MB (1257704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dc960a9d5b637968b871d06440e176e8d099b73a3acff8c896481cedf648dc`  
		Last Modified: Sat, 04 Nov 2017 17:04:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3a7dd9cac3e01710a907a9cc37f19942f848a525771168a37c6d8231816076`  
		Last Modified: Sat, 04 Nov 2017 17:04:49 GMT  
		Size: 6.0 MB (5993007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774302c15e962f4620ce2648cb695f8698f15471a0a9ca8df4cfc22ce9647901`  
		Last Modified: Sat, 04 Nov 2017 17:04:47 GMT  
		Size: 20.9 KB (20862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38966ad813f3c19b27f7482c67645101a396e3492cd66de520d837b29c864b97`  
		Last Modified: Sat, 04 Nov 2017 17:04:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f9e8c78d4e57cf87fe4b4436338e380d97a07870001615fde6eb62f0cf5bd2`  
		Last Modified: Sat, 04 Nov 2017 17:04:46 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cab7bf387f44e816af03a52efa5b82a0df9fe271c1725710db765db0ca4830b`  
		Last Modified: Sat, 04 Nov 2017 17:04:58 GMT  
		Size: 53.1 MB (53072868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5818ccf39e348d118c252d8494a80756c6fcfe4fa17b6bf001d0e265a166633a`  
		Last Modified: Sat, 04 Nov 2017 17:04:46 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a63a9c726980f805e566c8befd5db238c706d5f50fe856ff630990610059ada`  
		Last Modified: Sat, 04 Nov 2017 17:04:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:c25fb0ada1733c736e13994d210e77b93562fdf61abdd8cb9d32e9f1489a9fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:296475a5e93ab03af628433389a301016891fa40bdfa95456ab1f34f710c05f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135545218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcf8c1a96d211687e889530078079d1ee67d04a9eef4c16aa3e2566e71abdcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:33:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 05:33:36 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 05:33:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 05:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 05:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:57:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 16:57:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 16:57:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 16:58:12 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 04 Nov 2017 16:58:12 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Sat, 04 Nov 2017 16:58:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 16:58:45 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 16:58:45 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 16:58:45 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 16:58:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 16:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:58:46 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 16:58:46 GMT
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
	-	`sha256:3b43b3b913cbf2bc760d865112caa9e70367bb9f477607a162806f6fe4bfc0c1`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 1.3 MB (1302926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb803665d088eae212e9dcb44046766737a360e6bdcd560fa6c608516709d0`  
		Last Modified: Sat, 04 Nov 2017 05:36:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70c53a1be243d79ef9a5ea8bdf1c6acabf360d846a420ffc1ed10d9391d3866`  
		Last Modified: Sat, 04 Nov 2017 05:36:44 GMT  
		Size: 6.7 MB (6670673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab247c7432b9b97fbaf1e36b32bc394cc381d2cdbe01a31c0ad5493ebf4b18ab`  
		Last Modified: Sat, 04 Nov 2017 17:01:48 GMT  
		Size: 20.8 KB (20828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437523d039638e148818bb3ceabd9e42bfd1e613b5ca3cd3040cfcdaebbf609`  
		Last Modified: Sat, 04 Nov 2017 17:01:45 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02185372c549df42a3d27c55dad6bc68db68ec255faba7865f6d363d0eee294c`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8416aab538777b6d426cbb54c977903cae16b508f8d17938834ac8624771d4`  
		Last Modified: Sat, 04 Nov 2017 17:02:35 GMT  
		Size: 75.0 MB (74950152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10247ed22fa37c1ee86538451236709352644a58ed7ffebe794b3f6c831b07e9`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0e5b5aa0b7c8351d01728d0a9608dfad07d96da8c8b5076825baf4617340ba`  
		Last Modified: Sat, 04 Nov 2017 17:02:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
