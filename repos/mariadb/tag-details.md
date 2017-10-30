<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.33`](#mariadb10033)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.28`](#mariadb10128)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.9`](#mariadb1029)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.2`](#mariadb1032)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.58`](#mariadb5558)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:a8cdb2344e69bc8e9243860aac09ef59327a106ee29dab9c45a7fbba287ca607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:2aa64e976c9c63499c0a724df18e80aad0e8a53bbe58a9edbaf37283e4bd81c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135489168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d7f88b09c5328285c74d09c3d35dd5e61bcbcb71f4427f66534fcc5d012c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:41:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:41:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:42:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:42:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:42:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:42:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:42:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:43:46 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 09 Oct 2017 23:43:46 GMT
ENV MARIADB_VERSION=10.2.9+maria~jessie
# Mon, 09 Oct 2017 23:43:47 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 18:57:45 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 18:57:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 18:57:46 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:57:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 18:57:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:57:47 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 18:57:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc53f13a11bdd5a8c0406231db61e3bbcc80abd383c8d2aa025de18bc854f1`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c8ae4182d531daaaab1ba53752c6ced9fe2b285e113c8f6ace3482fe35e14`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 1.3 MB (1302935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972f6b9a7de1ee8ae02473a098d3794336153353cf8cbbaf563ed6be7735a5f`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c312ce1e4a8ba0fabe9a5cbf58a9096233d3ebf6c99ed322167b47b46d9363dc`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 6.7 MB (6670671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2ee37e5f13de4a0dda0fda6dab1e97630c57fbaebe3ba8b3f7f72e756521a`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4d4911c6f202de83245b1c8fddeca7029a03c2a9ec58e4a2495a52a1b68a91`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbdb2e68d401596f1abfb642e7f1c1076bddb9cdcba378e83a5eef24f6de6b`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a26e3c5596d72b5ea7bbbe163540e871791961f8d78b3cdcc19535b39f41fe`  
		Last Modified: Wed, 25 Oct 2017 19:01:59 GMT  
		Size: 74.9 MB (74894093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7e2769053322e8267a61e49fae76dc321ee4d75d43880d79ebd41df2e044e`  
		Last Modified: Wed, 25 Oct 2017 19:01:41 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8a77640ea31782b75bbba2e73115e877aa77a5d0ec10389ca6740597597a2d`  
		Last Modified: Wed, 25 Oct 2017 19:01:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:598e49d43c97132d6f74e2d05865c87d632e4f8608aa498fc51f89b69dcc7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:e671a8e5ef9c129c5eb433112fe5ec06a4b9482ae6c43365fcabc5b873832b55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119786359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9738f98db874f17544dc92e52aebe9c4a26f15bc6170acf51c13f8b231ba47c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:41:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:41:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:42:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:42:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:42:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:42:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:42:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:48:26 GMT
ENV MARIADB_MAJOR=10.0
# Mon, 09 Oct 2017 23:48:27 GMT
ENV MARIADB_VERSION=10.0.32+maria-1~jessie
# Mon, 09 Oct 2017 23:48:27 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 19:00:03 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 19:00:04 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 19:00:04 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 19:00:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 19:00:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 19:00:05 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 19:00:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc53f13a11bdd5a8c0406231db61e3bbcc80abd383c8d2aa025de18bc854f1`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c8ae4182d531daaaab1ba53752c6ced9fe2b285e113c8f6ace3482fe35e14`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 1.3 MB (1302935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972f6b9a7de1ee8ae02473a098d3794336153353cf8cbbaf563ed6be7735a5f`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c312ce1e4a8ba0fabe9a5cbf58a9096233d3ebf6c99ed322167b47b46d9363dc`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 6.7 MB (6670671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2ee37e5f13de4a0dda0fda6dab1e97630c57fbaebe3ba8b3f7f72e756521a`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4d4911c6f202de83245b1c8fddeca7029a03c2a9ec58e4a2495a52a1b68a91`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422da4103d05869f9beeee4ac3481440b35d0769c9c76aef99de34430a79e9e7`  
		Last Modified: Mon, 09 Oct 2017 23:52:31 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e7f01e23356fc30845fe7c1cc72c4d5b7156cb449b8b32b5eaa79a971dca57`  
		Last Modified: Wed, 25 Oct 2017 19:03:36 GMT  
		Size: 59.2 MB (59191288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b98946f7c875d83851011da38d2cffa4184d9e0f2bf0419fdfef8a67a36ea8d`  
		Last Modified: Wed, 25 Oct 2017 19:03:24 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a8e9b00b101ba9d697779551ad1b13f248edb0577b76cc90e4201fabf8c6d7`  
		Last Modified: Wed, 25 Oct 2017 19:03:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.33`

**does not exist** (yet?)

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:c0936fb42984b0d8f239dffb4fdef05c9c3cb294f43611f9607e1f356015f24e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:4957cc74aa9f0c9e82065c2c8fd3a116b8cf2f48982bc5aee9caed5527faa8aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134922514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a99764f89a284970619d495044f9c6354f39cef851b0de7ccda4173d007b412`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:41:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:41:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:42:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:42:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:42:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:42:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:42:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:45:02 GMT
ENV MARIADB_MAJOR=10.1
# Mon, 09 Oct 2017 23:45:02 GMT
ENV MARIADB_VERSION=10.1.28+maria-1~jessie
# Mon, 09 Oct 2017 23:45:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 18:58:48 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 18:58:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 18:58:49 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:58:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 18:58:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:58:50 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 18:58:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc53f13a11bdd5a8c0406231db61e3bbcc80abd383c8d2aa025de18bc854f1`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c8ae4182d531daaaab1ba53752c6ced9fe2b285e113c8f6ace3482fe35e14`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 1.3 MB (1302935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972f6b9a7de1ee8ae02473a098d3794336153353cf8cbbaf563ed6be7735a5f`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c312ce1e4a8ba0fabe9a5cbf58a9096233d3ebf6c99ed322167b47b46d9363dc`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 6.7 MB (6670671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2ee37e5f13de4a0dda0fda6dab1e97630c57fbaebe3ba8b3f7f72e756521a`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4d4911c6f202de83245b1c8fddeca7029a03c2a9ec58e4a2495a52a1b68a91`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebf49848b0621caa2acbfb9d3d06b24a23f9c84bc7f19f2458b57e372ad25a0`  
		Last Modified: Mon, 09 Oct 2017 23:51:49 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073f8da5fcd6b33ea5f17abf60fa29a031a2d4259545031fb6777de1a27dbe8b`  
		Last Modified: Wed, 25 Oct 2017 19:03:00 GMT  
		Size: 74.3 MB (74327438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0e008fce2e6bc8af8e335275cc2f39af3044ad61e1bb35174f38139cd33183`  
		Last Modified: Wed, 25 Oct 2017 19:02:41 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128053a3632d8217e43a83df0af50efb1e90b36b11612a9b878c8bff37cd645e`  
		Last Modified: Wed, 25 Oct 2017 19:02:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.28`

```console
$ docker pull mariadb@sha256:c0936fb42984b0d8f239dffb4fdef05c9c3cb294f43611f9607e1f356015f24e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.28` - linux; amd64

```console
$ docker pull mariadb@sha256:4957cc74aa9f0c9e82065c2c8fd3a116b8cf2f48982bc5aee9caed5527faa8aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134922514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a99764f89a284970619d495044f9c6354f39cef851b0de7ccda4173d007b412`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:41:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:41:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:42:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:42:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:42:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:42:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:42:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:45:02 GMT
ENV MARIADB_MAJOR=10.1
# Mon, 09 Oct 2017 23:45:02 GMT
ENV MARIADB_VERSION=10.1.28+maria-1~jessie
# Mon, 09 Oct 2017 23:45:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 18:58:48 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 18:58:48 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 18:58:49 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:58:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 18:58:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:58:50 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 18:58:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc53f13a11bdd5a8c0406231db61e3bbcc80abd383c8d2aa025de18bc854f1`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c8ae4182d531daaaab1ba53752c6ced9fe2b285e113c8f6ace3482fe35e14`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 1.3 MB (1302935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972f6b9a7de1ee8ae02473a098d3794336153353cf8cbbaf563ed6be7735a5f`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c312ce1e4a8ba0fabe9a5cbf58a9096233d3ebf6c99ed322167b47b46d9363dc`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 6.7 MB (6670671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2ee37e5f13de4a0dda0fda6dab1e97630c57fbaebe3ba8b3f7f72e756521a`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4d4911c6f202de83245b1c8fddeca7029a03c2a9ec58e4a2495a52a1b68a91`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebf49848b0621caa2acbfb9d3d06b24a23f9c84bc7f19f2458b57e372ad25a0`  
		Last Modified: Mon, 09 Oct 2017 23:51:49 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073f8da5fcd6b33ea5f17abf60fa29a031a2d4259545031fb6777de1a27dbe8b`  
		Last Modified: Wed, 25 Oct 2017 19:03:00 GMT  
		Size: 74.3 MB (74327438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0e008fce2e6bc8af8e335275cc2f39af3044ad61e1bb35174f38139cd33183`  
		Last Modified: Wed, 25 Oct 2017 19:02:41 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128053a3632d8217e43a83df0af50efb1e90b36b11612a9b878c8bff37cd645e`  
		Last Modified: Wed, 25 Oct 2017 19:02:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:a8cdb2344e69bc8e9243860aac09ef59327a106ee29dab9c45a7fbba287ca607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:2aa64e976c9c63499c0a724df18e80aad0e8a53bbe58a9edbaf37283e4bd81c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135489168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d7f88b09c5328285c74d09c3d35dd5e61bcbcb71f4427f66534fcc5d012c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:41:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:41:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:42:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:42:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:42:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:42:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:42:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:43:46 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 09 Oct 2017 23:43:46 GMT
ENV MARIADB_VERSION=10.2.9+maria~jessie
# Mon, 09 Oct 2017 23:43:47 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 18:57:45 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 18:57:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 18:57:46 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:57:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 18:57:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:57:47 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 18:57:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc53f13a11bdd5a8c0406231db61e3bbcc80abd383c8d2aa025de18bc854f1`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c8ae4182d531daaaab1ba53752c6ced9fe2b285e113c8f6ace3482fe35e14`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 1.3 MB (1302935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972f6b9a7de1ee8ae02473a098d3794336153353cf8cbbaf563ed6be7735a5f`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c312ce1e4a8ba0fabe9a5cbf58a9096233d3ebf6c99ed322167b47b46d9363dc`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 6.7 MB (6670671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2ee37e5f13de4a0dda0fda6dab1e97630c57fbaebe3ba8b3f7f72e756521a`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4d4911c6f202de83245b1c8fddeca7029a03c2a9ec58e4a2495a52a1b68a91`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbdb2e68d401596f1abfb642e7f1c1076bddb9cdcba378e83a5eef24f6de6b`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a26e3c5596d72b5ea7bbbe163540e871791961f8d78b3cdcc19535b39f41fe`  
		Last Modified: Wed, 25 Oct 2017 19:01:59 GMT  
		Size: 74.9 MB (74894093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7e2769053322e8267a61e49fae76dc321ee4d75d43880d79ebd41df2e044e`  
		Last Modified: Wed, 25 Oct 2017 19:01:41 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8a77640ea31782b75bbba2e73115e877aa77a5d0ec10389ca6740597597a2d`  
		Last Modified: Wed, 25 Oct 2017 19:01:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.9`

```console
$ docker pull mariadb@sha256:a8cdb2344e69bc8e9243860aac09ef59327a106ee29dab9c45a7fbba287ca607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.9` - linux; amd64

```console
$ docker pull mariadb@sha256:2aa64e976c9c63499c0a724df18e80aad0e8a53bbe58a9edbaf37283e4bd81c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135489168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d7f88b09c5328285c74d09c3d35dd5e61bcbcb71f4427f66534fcc5d012c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:41:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:41:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:42:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:42:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:42:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:42:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:42:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:43:46 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 09 Oct 2017 23:43:46 GMT
ENV MARIADB_VERSION=10.2.9+maria~jessie
# Mon, 09 Oct 2017 23:43:47 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 18:57:45 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 18:57:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 18:57:46 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:57:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 18:57:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:57:47 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 18:57:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc53f13a11bdd5a8c0406231db61e3bbcc80abd383c8d2aa025de18bc854f1`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c8ae4182d531daaaab1ba53752c6ced9fe2b285e113c8f6ace3482fe35e14`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 1.3 MB (1302935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972f6b9a7de1ee8ae02473a098d3794336153353cf8cbbaf563ed6be7735a5f`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c312ce1e4a8ba0fabe9a5cbf58a9096233d3ebf6c99ed322167b47b46d9363dc`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 6.7 MB (6670671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2ee37e5f13de4a0dda0fda6dab1e97630c57fbaebe3ba8b3f7f72e756521a`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4d4911c6f202de83245b1c8fddeca7029a03c2a9ec58e4a2495a52a1b68a91`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbdb2e68d401596f1abfb642e7f1c1076bddb9cdcba378e83a5eef24f6de6b`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a26e3c5596d72b5ea7bbbe163540e871791961f8d78b3cdcc19535b39f41fe`  
		Last Modified: Wed, 25 Oct 2017 19:01:59 GMT  
		Size: 74.9 MB (74894093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7e2769053322e8267a61e49fae76dc321ee4d75d43880d79ebd41df2e044e`  
		Last Modified: Wed, 25 Oct 2017 19:01:41 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8a77640ea31782b75bbba2e73115e877aa77a5d0ec10389ca6740597597a2d`  
		Last Modified: Wed, 25 Oct 2017 19:01:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:cfad9db871b2730f040722d9874173bac969133b487271fe1ddcaf788345a8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:68d4e1184b68979f81f67fd4abdc56410712c913c4e93da9abcbb1ac0e6a1075
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135813585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21051c4135ddb9b8e30f7d7106a384b1d8c6bf42a51524acf8c2512e31849ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:41:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:41:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:42:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:42:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:42:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:42:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:42:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:42:34 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 10 Oct 2017 07:53:04 GMT
ENV MARIADB_VERSION=10.3.2+maria~jessie
# Tue, 10 Oct 2017 07:53:05 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 18:50:54 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 18:50:55 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 18:50:55 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:50:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 18:50:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:50:56 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 18:50:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc53f13a11bdd5a8c0406231db61e3bbcc80abd383c8d2aa025de18bc854f1`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c8ae4182d531daaaab1ba53752c6ced9fe2b285e113c8f6ace3482fe35e14`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 1.3 MB (1302935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972f6b9a7de1ee8ae02473a098d3794336153353cf8cbbaf563ed6be7735a5f`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c312ce1e4a8ba0fabe9a5cbf58a9096233d3ebf6c99ed322167b47b46d9363dc`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 6.7 MB (6670671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2ee37e5f13de4a0dda0fda6dab1e97630c57fbaebe3ba8b3f7f72e756521a`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4d4911c6f202de83245b1c8fddeca7029a03c2a9ec58e4a2495a52a1b68a91`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bce97a0b6c09fd225afab9a88fdf6d16bff6c7d328b0a33b5943f72d441a14`  
		Last Modified: Tue, 10 Oct 2017 07:54:15 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da432738c3893e24f05a5ecf2ec837c61b20003228218c3478186615c96ac5e`  
		Last Modified: Wed, 25 Oct 2017 19:01:19 GMT  
		Size: 75.2 MB (75218512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9bdec8d1fa5378ddafe51cd522fedd6eefbefd99629a0e2e821eaef854823`  
		Last Modified: Wed, 25 Oct 2017 19:01:01 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808560580048b2c71a33bb153e833b3cf82c14ca1843eb0314fbbfa763ddb207`  
		Last Modified: Wed, 25 Oct 2017 19:01:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.2`

```console
$ docker pull mariadb@sha256:cfad9db871b2730f040722d9874173bac969133b487271fe1ddcaf788345a8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.2` - linux; amd64

```console
$ docker pull mariadb@sha256:68d4e1184b68979f81f67fd4abdc56410712c913c4e93da9abcbb1ac0e6a1075
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135813585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21051c4135ddb9b8e30f7d7106a384b1d8c6bf42a51524acf8c2512e31849ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:41:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:41:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:42:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:42:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:42:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:42:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:42:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:42:34 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 10 Oct 2017 07:53:04 GMT
ENV MARIADB_VERSION=10.3.2+maria~jessie
# Tue, 10 Oct 2017 07:53:05 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 18:50:54 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 18:50:55 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 18:50:55 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:50:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 18:50:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:50:56 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 18:50:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc53f13a11bdd5a8c0406231db61e3bbcc80abd383c8d2aa025de18bc854f1`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c8ae4182d531daaaab1ba53752c6ced9fe2b285e113c8f6ace3482fe35e14`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 1.3 MB (1302935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972f6b9a7de1ee8ae02473a098d3794336153353cf8cbbaf563ed6be7735a5f`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c312ce1e4a8ba0fabe9a5cbf58a9096233d3ebf6c99ed322167b47b46d9363dc`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 6.7 MB (6670671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2ee37e5f13de4a0dda0fda6dab1e97630c57fbaebe3ba8b3f7f72e756521a`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4d4911c6f202de83245b1c8fddeca7029a03c2a9ec58e4a2495a52a1b68a91`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bce97a0b6c09fd225afab9a88fdf6d16bff6c7d328b0a33b5943f72d441a14`  
		Last Modified: Tue, 10 Oct 2017 07:54:15 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da432738c3893e24f05a5ecf2ec837c61b20003228218c3478186615c96ac5e`  
		Last Modified: Wed, 25 Oct 2017 19:01:19 GMT  
		Size: 75.2 MB (75218512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9bdec8d1fa5378ddafe51cd522fedd6eefbefd99629a0e2e821eaef854823`  
		Last Modified: Wed, 25 Oct 2017 19:01:01 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808560580048b2c71a33bb153e833b3cf82c14ca1843eb0314fbbfa763ddb207`  
		Last Modified: Wed, 25 Oct 2017 19:01:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:e19139cdba2d3e6755847927ddb6cb5b9b269b5fa315abbddc3885b4b60b3aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:d2e08899d798ff8511ce7638add09a4221aba358a8dc9e91bc6ebedf90d625de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98453018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917a5fbfed1f716b68b10bc91ec693c25f9c891f3c01dccf61e38b069dcdf3a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:49:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:49:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:49:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:50:02 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:50:03 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:50:03 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 18 Oct 2017 21:41:13 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Wed, 18 Oct 2017 21:41:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 19:00:35 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 19:00:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 19:00:36 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 19:00:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 19:00:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 19:00:37 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 19:00:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd46109304ff95556e7f1447c521ab7d8b9eb55f10303495e32ca56e05b99e41`  
		Last Modified: Mon, 09 Oct 2017 23:53:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23d0e2cf6800a048b725b465dde2aec5e4381974506e4488db975c35f48d46`  
		Last Modified: Mon, 09 Oct 2017 23:53:15 GMT  
		Size: 1.3 MB (1257676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e260ac0e88159adf153de440a1e28e32d1623bdd1cf3cc31325ac7ca33df7c81`  
		Last Modified: Mon, 09 Oct 2017 23:53:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac19a5d080bb5c47f6d896931f6b2755590004889d5214ca51ef172c8d62ef3`  
		Last Modified: Mon, 09 Oct 2017 23:53:13 GMT  
		Size: 6.0 MB (5993007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c1cc7537728e2ac0894f13a688dae794aea2f1d4141b649b6201ccf6d1a89b`  
		Last Modified: Mon, 09 Oct 2017 23:53:12 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba62f9e711892b34ea86c4caeef97de09f8f0ad61f5e552875f508c4f01c9353`  
		Last Modified: Mon, 09 Oct 2017 23:53:12 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e796bcfa1af3957c17fb1999c39456c8241f3cb2690b2fa3b5ecb7b72ae4d85a`  
		Last Modified: Wed, 18 Oct 2017 21:41:57 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a9a19f1d98de9100be76679d0a09d647e458c62b5bceda42e82b18a8b9d14`  
		Last Modified: Wed, 25 Oct 2017 19:04:16 GMT  
		Size: 53.1 MB (53073176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86300c3c24b8ea0ed0db4e0741b1800a9754e65bb4db83d3c4441d11f293793`  
		Last Modified: Wed, 25 Oct 2017 19:04:07 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11f5e511f35f6b9346658ee935e027bf79173c760564c00ba6a23a37e29f64a`  
		Last Modified: Wed, 25 Oct 2017 19:04:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:e19139cdba2d3e6755847927ddb6cb5b9b269b5fa315abbddc3885b4b60b3aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:d2e08899d798ff8511ce7638add09a4221aba358a8dc9e91bc6ebedf90d625de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98453018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917a5fbfed1f716b68b10bc91ec693c25f9c891f3c01dccf61e38b069dcdf3a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:49:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:49:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:49:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:50:02 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:50:03 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:50:03 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 18 Oct 2017 21:41:13 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Wed, 18 Oct 2017 21:41:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 19:00:35 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 19:00:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 19:00:36 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 19:00:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 19:00:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 19:00:37 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 19:00:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd46109304ff95556e7f1447c521ab7d8b9eb55f10303495e32ca56e05b99e41`  
		Last Modified: Mon, 09 Oct 2017 23:53:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23d0e2cf6800a048b725b465dde2aec5e4381974506e4488db975c35f48d46`  
		Last Modified: Mon, 09 Oct 2017 23:53:15 GMT  
		Size: 1.3 MB (1257676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e260ac0e88159adf153de440a1e28e32d1623bdd1cf3cc31325ac7ca33df7c81`  
		Last Modified: Mon, 09 Oct 2017 23:53:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac19a5d080bb5c47f6d896931f6b2755590004889d5214ca51ef172c8d62ef3`  
		Last Modified: Mon, 09 Oct 2017 23:53:13 GMT  
		Size: 6.0 MB (5993007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c1cc7537728e2ac0894f13a688dae794aea2f1d4141b649b6201ccf6d1a89b`  
		Last Modified: Mon, 09 Oct 2017 23:53:12 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba62f9e711892b34ea86c4caeef97de09f8f0ad61f5e552875f508c4f01c9353`  
		Last Modified: Mon, 09 Oct 2017 23:53:12 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e796bcfa1af3957c17fb1999c39456c8241f3cb2690b2fa3b5ecb7b72ae4d85a`  
		Last Modified: Wed, 18 Oct 2017 21:41:57 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a9a19f1d98de9100be76679d0a09d647e458c62b5bceda42e82b18a8b9d14`  
		Last Modified: Wed, 25 Oct 2017 19:04:16 GMT  
		Size: 53.1 MB (53073176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86300c3c24b8ea0ed0db4e0741b1800a9754e65bb4db83d3c4441d11f293793`  
		Last Modified: Wed, 25 Oct 2017 19:04:07 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11f5e511f35f6b9346658ee935e027bf79173c760564c00ba6a23a37e29f64a`  
		Last Modified: Wed, 25 Oct 2017 19:04:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.58`

```console
$ docker pull mariadb@sha256:e19139cdba2d3e6755847927ddb6cb5b9b269b5fa315abbddc3885b4b60b3aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.58` - linux; amd64

```console
$ docker pull mariadb@sha256:d2e08899d798ff8511ce7638add09a4221aba358a8dc9e91bc6ebedf90d625de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98453018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917a5fbfed1f716b68b10bc91ec693c25f9c891f3c01dccf61e38b069dcdf3a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:49:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:49:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:49:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:50:02 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:50:03 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:50:03 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 18 Oct 2017 21:41:13 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Wed, 18 Oct 2017 21:41:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 19:00:35 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 19:00:36 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 19:00:36 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 19:00:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 19:00:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 19:00:37 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 19:00:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd46109304ff95556e7f1447c521ab7d8b9eb55f10303495e32ca56e05b99e41`  
		Last Modified: Mon, 09 Oct 2017 23:53:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23d0e2cf6800a048b725b465dde2aec5e4381974506e4488db975c35f48d46`  
		Last Modified: Mon, 09 Oct 2017 23:53:15 GMT  
		Size: 1.3 MB (1257676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e260ac0e88159adf153de440a1e28e32d1623bdd1cf3cc31325ac7ca33df7c81`  
		Last Modified: Mon, 09 Oct 2017 23:53:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac19a5d080bb5c47f6d896931f6b2755590004889d5214ca51ef172c8d62ef3`  
		Last Modified: Mon, 09 Oct 2017 23:53:13 GMT  
		Size: 6.0 MB (5993007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c1cc7537728e2ac0894f13a688dae794aea2f1d4141b649b6201ccf6d1a89b`  
		Last Modified: Mon, 09 Oct 2017 23:53:12 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba62f9e711892b34ea86c4caeef97de09f8f0ad61f5e552875f508c4f01c9353`  
		Last Modified: Mon, 09 Oct 2017 23:53:12 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e796bcfa1af3957c17fb1999c39456c8241f3cb2690b2fa3b5ecb7b72ae4d85a`  
		Last Modified: Wed, 18 Oct 2017 21:41:57 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a9a19f1d98de9100be76679d0a09d647e458c62b5bceda42e82b18a8b9d14`  
		Last Modified: Wed, 25 Oct 2017 19:04:16 GMT  
		Size: 53.1 MB (53073176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86300c3c24b8ea0ed0db4e0741b1800a9754e65bb4db83d3c4441d11f293793`  
		Last Modified: Wed, 25 Oct 2017 19:04:07 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11f5e511f35f6b9346658ee935e027bf79173c760564c00ba6a23a37e29f64a`  
		Last Modified: Wed, 25 Oct 2017 19:04:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:a8cdb2344e69bc8e9243860aac09ef59327a106ee29dab9c45a7fbba287ca607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:2aa64e976c9c63499c0a724df18e80aad0e8a53bbe58a9edbaf37283e4bd81c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135489168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d7f88b09c5328285c74d09c3d35dd5e61bcbcb71f4427f66534fcc5d012c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:41:33 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 09 Oct 2017 23:41:34 GMT
ENV GOSU_VERSION=1.7
# Mon, 09 Oct 2017 23:42:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:42:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:42:27 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 09 Oct 2017 23:42:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 23:42:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 09 Oct 2017 23:43:46 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 09 Oct 2017 23:43:46 GMT
ENV MARIADB_VERSION=10.2.9+maria~jessie
# Mon, 09 Oct 2017 23:43:47 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 25 Oct 2017 18:57:45 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 25 Oct 2017 18:57:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 25 Oct 2017 18:57:46 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 25 Oct 2017 18:57:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 25 Oct 2017 18:57:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 18:57:47 GMT
EXPOSE 3306/tcp
# Wed, 25 Oct 2017 18:57:48 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc53f13a11bdd5a8c0406231db61e3bbcc80abd383c8d2aa025de18bc854f1`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c8ae4182d531daaaab1ba53752c6ced9fe2b285e113c8f6ace3482fe35e14`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 1.3 MB (1302935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972f6b9a7de1ee8ae02473a098d3794336153353cf8cbbaf563ed6be7735a5f`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c312ce1e4a8ba0fabe9a5cbf58a9096233d3ebf6c99ed322167b47b46d9363dc`  
		Last Modified: Mon, 09 Oct 2017 23:50:44 GMT  
		Size: 6.7 MB (6670671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2ee37e5f13de4a0dda0fda6dab1e97630c57fbaebe3ba8b3f7f72e756521a`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4d4911c6f202de83245b1c8fddeca7029a03c2a9ec58e4a2495a52a1b68a91`  
		Last Modified: Mon, 09 Oct 2017 23:50:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbdb2e68d401596f1abfb642e7f1c1076bddb9cdcba378e83a5eef24f6de6b`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a26e3c5596d72b5ea7bbbe163540e871791961f8d78b3cdcc19535b39f41fe`  
		Last Modified: Wed, 25 Oct 2017 19:01:59 GMT  
		Size: 74.9 MB (74894093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7e2769053322e8267a61e49fae76dc321ee4d75d43880d79ebd41df2e044e`  
		Last Modified: Wed, 25 Oct 2017 19:01:41 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8a77640ea31782b75bbba2e73115e877aa77a5d0ec10389ca6740597597a2d`  
		Last Modified: Wed, 25 Oct 2017 19:01:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
