<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.32`](#mariadb10032)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.28`](#mariadb10128)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.9`](#mariadb1029)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.2`](#mariadb1032)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.57`](#mariadb5557)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:5f6f27abd461d2ed3dcbf61da39ecb87d47cbf341fad6e75f5b26246d9a44522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:b87c44c3fc2e253086f028de74a255be189b7aab53638893630f1b0411b1f5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135492032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18017b24230730d28a03027fcc2e763c3e5ddbb6a4d63228cad348cdcca1c9a4`
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
# Mon, 09 Oct 2017 23:44:47 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:44:48 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:44:48 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:44:48 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:44:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:44:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:44:50 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:44:50 GMT
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
	-	`sha256:022f1eddae97601069465c437718b5bd3965c58a1485a7a3acd44c9d01395047`  
		Last Modified: Mon, 09 Oct 2017 23:51:02 GMT  
		Size: 74.9 MB (74894287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34a3759133b7a7306697697d47a6884e6aa8f5ba6fa8ea369bab6dac0c45826`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fcc6779467675e5fd50a1693e4e81e724c02be81a375b2027e58363901b08`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182b32481ab4cbca541d76def92b2a99323db411f126cf2af124b1a68c1292aa`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:5b81eb4b45458acb0e8eb60d3ae4bc2ef1d4f56c3c7d6a18aa5b0d3887fe9316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:c4a70723a6a7b823e5709ee3942d5d381382678624d5dcfb3a80b0ad3c76d2df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119788898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edaf25ee6316ac3fdea3830586b0486d8a38d80922fe68693a354a8984608d5d`
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
# Mon, 09 Oct 2017 23:49:21 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:49:22 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:49:22 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:49:23 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:49:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:49:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:49:24 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:49:24 GMT
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
	-	`sha256:e28891f88d8852862d671ff9c15aa6ad0d57ebdf4e9a768b389eb0547f3cb13a`  
		Last Modified: Mon, 09 Oct 2017 23:52:45 GMT  
		Size: 59.2 MB (59191305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dc278a06c03e01bf2087d2f9cde0895998a79b5913868074c4a09b1f5ad28`  
		Last Modified: Mon, 09 Oct 2017 23:52:31 GMT  
		Size: 2.5 KB (2522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381d73e85329a6468614d77ae5ed217cfe6cf7398722d149549d1e8a651f39d0`  
		Last Modified: Mon, 09 Oct 2017 23:52:31 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6110499f3b90b38113532a5d18c1bab6a15ac35c865c2a381d115f75e95b8f9`  
		Last Modified: Mon, 09 Oct 2017 23:52:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.32`

```console
$ docker pull mariadb@sha256:5b81eb4b45458acb0e8eb60d3ae4bc2ef1d4f56c3c7d6a18aa5b0d3887fe9316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.32` - linux; amd64

```console
$ docker pull mariadb@sha256:c4a70723a6a7b823e5709ee3942d5d381382678624d5dcfb3a80b0ad3c76d2df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119788898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edaf25ee6316ac3fdea3830586b0486d8a38d80922fe68693a354a8984608d5d`
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
# Mon, 09 Oct 2017 23:49:21 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:49:22 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:49:22 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:49:23 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:49:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:49:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:49:24 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:49:24 GMT
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
	-	`sha256:e28891f88d8852862d671ff9c15aa6ad0d57ebdf4e9a768b389eb0547f3cb13a`  
		Last Modified: Mon, 09 Oct 2017 23:52:45 GMT  
		Size: 59.2 MB (59191305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dc278a06c03e01bf2087d2f9cde0895998a79b5913868074c4a09b1f5ad28`  
		Last Modified: Mon, 09 Oct 2017 23:52:31 GMT  
		Size: 2.5 KB (2522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381d73e85329a6468614d77ae5ed217cfe6cf7398722d149549d1e8a651f39d0`  
		Last Modified: Mon, 09 Oct 2017 23:52:31 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6110499f3b90b38113532a5d18c1bab6a15ac35c865c2a381d115f75e95b8f9`  
		Last Modified: Mon, 09 Oct 2017 23:52:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:add7ecf19e4d142b1f76f0adbe1a260326f4a0ac82f667188c48d9f01429cc7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:6fd2f689fd6c073b72f94ee163b451045fc15565157e7d63a6ab86ea3959e44a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134924255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edc43e4fde2b07390732f54f44ca485423d86ca19d3927c9b47583355043a8d`
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
# Mon, 09 Oct 2017 23:46:11 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:46:12 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:46:12 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:46:13 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:46:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:46:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:46:14 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:46:15 GMT
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
	-	`sha256:d1235dbdef8a1001406707b9a966f46cb6fcd65512c3b039d6e53caab59d3ed0`  
		Last Modified: Mon, 09 Oct 2017 23:52:08 GMT  
		Size: 74.3 MB (74326502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d78598a832dbc9d4253d29c7e6dd6af30131ca7bd0ec9707c4481a0c8e5d85`  
		Last Modified: Mon, 09 Oct 2017 23:51:49 GMT  
		Size: 2.7 KB (2677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de85906e04607b33ff8c4f39ae2a409e6449a86620661b473be7af5059cfb98`  
		Last Modified: Mon, 09 Oct 2017 23:51:49 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebbf6c8ddde0edbf33f5203f93c880d72d98a4ac1d2b98c63fb94bfab2ca772`  
		Last Modified: Mon, 09 Oct 2017 23:51:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.28`

```console
$ docker pull mariadb@sha256:add7ecf19e4d142b1f76f0adbe1a260326f4a0ac82f667188c48d9f01429cc7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.28` - linux; amd64

```console
$ docker pull mariadb@sha256:6fd2f689fd6c073b72f94ee163b451045fc15565157e7d63a6ab86ea3959e44a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134924255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edc43e4fde2b07390732f54f44ca485423d86ca19d3927c9b47583355043a8d`
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
# Mon, 09 Oct 2017 23:46:11 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:46:12 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:46:12 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:46:13 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:46:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:46:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:46:14 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:46:15 GMT
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
	-	`sha256:d1235dbdef8a1001406707b9a966f46cb6fcd65512c3b039d6e53caab59d3ed0`  
		Last Modified: Mon, 09 Oct 2017 23:52:08 GMT  
		Size: 74.3 MB (74326502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d78598a832dbc9d4253d29c7e6dd6af30131ca7bd0ec9707c4481a0c8e5d85`  
		Last Modified: Mon, 09 Oct 2017 23:51:49 GMT  
		Size: 2.7 KB (2677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de85906e04607b33ff8c4f39ae2a409e6449a86620661b473be7af5059cfb98`  
		Last Modified: Mon, 09 Oct 2017 23:51:49 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebbf6c8ddde0edbf33f5203f93c880d72d98a4ac1d2b98c63fb94bfab2ca772`  
		Last Modified: Mon, 09 Oct 2017 23:51:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:5f6f27abd461d2ed3dcbf61da39ecb87d47cbf341fad6e75f5b26246d9a44522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:b87c44c3fc2e253086f028de74a255be189b7aab53638893630f1b0411b1f5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135492032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18017b24230730d28a03027fcc2e763c3e5ddbb6a4d63228cad348cdcca1c9a4`
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
# Mon, 09 Oct 2017 23:44:47 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:44:48 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:44:48 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:44:48 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:44:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:44:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:44:50 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:44:50 GMT
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
	-	`sha256:022f1eddae97601069465c437718b5bd3965c58a1485a7a3acd44c9d01395047`  
		Last Modified: Mon, 09 Oct 2017 23:51:02 GMT  
		Size: 74.9 MB (74894287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34a3759133b7a7306697697d47a6884e6aa8f5ba6fa8ea369bab6dac0c45826`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fcc6779467675e5fd50a1693e4e81e724c02be81a375b2027e58363901b08`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182b32481ab4cbca541d76def92b2a99323db411f126cf2af124b1a68c1292aa`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.9`

```console
$ docker pull mariadb@sha256:5f6f27abd461d2ed3dcbf61da39ecb87d47cbf341fad6e75f5b26246d9a44522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.9` - linux; amd64

```console
$ docker pull mariadb@sha256:b87c44c3fc2e253086f028de74a255be189b7aab53638893630f1b0411b1f5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135492032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18017b24230730d28a03027fcc2e763c3e5ddbb6a4d63228cad348cdcca1c9a4`
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
# Mon, 09 Oct 2017 23:44:47 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:44:48 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:44:48 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:44:48 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:44:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:44:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:44:50 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:44:50 GMT
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
	-	`sha256:022f1eddae97601069465c437718b5bd3965c58a1485a7a3acd44c9d01395047`  
		Last Modified: Mon, 09 Oct 2017 23:51:02 GMT  
		Size: 74.9 MB (74894287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34a3759133b7a7306697697d47a6884e6aa8f5ba6fa8ea369bab6dac0c45826`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fcc6779467675e5fd50a1693e4e81e724c02be81a375b2027e58363901b08`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182b32481ab4cbca541d76def92b2a99323db411f126cf2af124b1a68c1292aa`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:3d8f7d1a00eb2b7e5fac404e235eb4fde1c2088639a613139c8baf71659dfb27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:1dbf2c983a716889ae0997a4aa36fc2ef1f2315bb443cd7848aeeb46e0f22de3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135816029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088dade8891ae31cd76fbcdada4d315ccf85c04d06f6e1c7ca48b3c143ee546b`
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
# Tue, 10 Oct 2017 07:53:54 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 10 Oct 2017 07:53:54 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 10 Oct 2017 07:53:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 10 Oct 2017 07:53:55 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:53:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:53:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:53:56 GMT
EXPOSE 3306/tcp
# Tue, 10 Oct 2017 07:53:56 GMT
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
	-	`sha256:537a1a402b9d63a58e34e7c15dc9dcee674b95a3eacfff2653606177d022c72d`  
		Last Modified: Tue, 10 Oct 2017 07:54:28 GMT  
		Size: 75.2 MB (75218280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ffbd9a9b0d07d7d4a870e3149ebe53d05494ac76381eae3eb0da1d8944dc4f`  
		Last Modified: Tue, 10 Oct 2017 07:54:15 GMT  
		Size: 2.7 KB (2675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b1194866a27a42853c6c7583fb88fd620b34ea5da2b3b27d53f02766015927`  
		Last Modified: Tue, 10 Oct 2017 07:54:15 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49067ed1c3785ba8d7d88c400f7a760e8cc71f1603a033664e7dfa7d48b7aa`  
		Last Modified: Tue, 10 Oct 2017 07:54:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.2`

```console
$ docker pull mariadb@sha256:3d8f7d1a00eb2b7e5fac404e235eb4fde1c2088639a613139c8baf71659dfb27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.2` - linux; amd64

```console
$ docker pull mariadb@sha256:1dbf2c983a716889ae0997a4aa36fc2ef1f2315bb443cd7848aeeb46e0f22de3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135816029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088dade8891ae31cd76fbcdada4d315ccf85c04d06f6e1c7ca48b3c143ee546b`
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
# Tue, 10 Oct 2017 07:53:54 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 10 Oct 2017 07:53:54 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 10 Oct 2017 07:53:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 10 Oct 2017 07:53:55 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:53:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:53:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:53:56 GMT
EXPOSE 3306/tcp
# Tue, 10 Oct 2017 07:53:56 GMT
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
	-	`sha256:537a1a402b9d63a58e34e7c15dc9dcee674b95a3eacfff2653606177d022c72d`  
		Last Modified: Tue, 10 Oct 2017 07:54:28 GMT  
		Size: 75.2 MB (75218280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ffbd9a9b0d07d7d4a870e3149ebe53d05494ac76381eae3eb0da1d8944dc4f`  
		Last Modified: Tue, 10 Oct 2017 07:54:15 GMT  
		Size: 2.7 KB (2675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b1194866a27a42853c6c7583fb88fd620b34ea5da2b3b27d53f02766015927`  
		Last Modified: Tue, 10 Oct 2017 07:54:15 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49067ed1c3785ba8d7d88c400f7a760e8cc71f1603a033664e7dfa7d48b7aa`  
		Last Modified: Tue, 10 Oct 2017 07:54:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:6d3e8af63635284b6e27973412f95c2d3a2fe259930427b0a7b7e28b91872c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:ac195b36eb4f7bba78800ae0d884d76a5ee850d7b5ee4e718418ac9bf7347134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98456616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2813c1c067bd7f9c207157882a13171b61bb8f4f7679702228bc0d893d7e93`
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
# Mon, 09 Oct 2017 23:50:03 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Mon, 09 Oct 2017 23:50:04 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 09 Oct 2017 23:50:18 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:50:18 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:50:19 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:50:19 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:50:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:50:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:50:20 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:50:20 GMT
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
	-	`sha256:d655982a978374300352a09bd1d61385b2499a964d18f912c66309184b6ad43b`  
		Last Modified: Mon, 09 Oct 2017 23:53:10 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9441ece8544c99fd1a3e9852eb0b790bb6ac015517da2f0dd6ed88d1f590b3`  
		Last Modified: Mon, 09 Oct 2017 23:53:23 GMT  
		Size: 53.1 MB (53074258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972c1a670119e90a85e346dceaf38243a8ea98f58e791846fa0ab13c0883043`  
		Last Modified: Mon, 09 Oct 2017 23:53:10 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b4aee5295dae8d6b2110a64bc94f07db8d7041e5b00927ee9a8576e3d2669f`  
		Last Modified: Mon, 09 Oct 2017 23:53:10 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81cd7536ee9d4ace6ddff9ea0911389d077b820f595ffa051209d8602221bc`  
		Last Modified: Mon, 09 Oct 2017 23:53:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:6d3e8af63635284b6e27973412f95c2d3a2fe259930427b0a7b7e28b91872c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:ac195b36eb4f7bba78800ae0d884d76a5ee850d7b5ee4e718418ac9bf7347134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98456616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2813c1c067bd7f9c207157882a13171b61bb8f4f7679702228bc0d893d7e93`
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
# Mon, 09 Oct 2017 23:50:03 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Mon, 09 Oct 2017 23:50:04 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 09 Oct 2017 23:50:18 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:50:18 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:50:19 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:50:19 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:50:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:50:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:50:20 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:50:20 GMT
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
	-	`sha256:d655982a978374300352a09bd1d61385b2499a964d18f912c66309184b6ad43b`  
		Last Modified: Mon, 09 Oct 2017 23:53:10 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9441ece8544c99fd1a3e9852eb0b790bb6ac015517da2f0dd6ed88d1f590b3`  
		Last Modified: Mon, 09 Oct 2017 23:53:23 GMT  
		Size: 53.1 MB (53074258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972c1a670119e90a85e346dceaf38243a8ea98f58e791846fa0ab13c0883043`  
		Last Modified: Mon, 09 Oct 2017 23:53:10 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b4aee5295dae8d6b2110a64bc94f07db8d7041e5b00927ee9a8576e3d2669f`  
		Last Modified: Mon, 09 Oct 2017 23:53:10 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81cd7536ee9d4ace6ddff9ea0911389d077b820f595ffa051209d8602221bc`  
		Last Modified: Mon, 09 Oct 2017 23:53:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.57`

```console
$ docker pull mariadb@sha256:6d3e8af63635284b6e27973412f95c2d3a2fe259930427b0a7b7e28b91872c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.57` - linux; amd64

```console
$ docker pull mariadb@sha256:ac195b36eb4f7bba78800ae0d884d76a5ee850d7b5ee4e718418ac9bf7347134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98456616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2813c1c067bd7f9c207157882a13171b61bb8f4f7679702228bc0d893d7e93`
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
# Mon, 09 Oct 2017 23:50:03 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Mon, 09 Oct 2017 23:50:04 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 09 Oct 2017 23:50:18 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:50:18 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:50:19 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:50:19 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:50:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:50:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:50:20 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:50:20 GMT
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
	-	`sha256:d655982a978374300352a09bd1d61385b2499a964d18f912c66309184b6ad43b`  
		Last Modified: Mon, 09 Oct 2017 23:53:10 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9441ece8544c99fd1a3e9852eb0b790bb6ac015517da2f0dd6ed88d1f590b3`  
		Last Modified: Mon, 09 Oct 2017 23:53:23 GMT  
		Size: 53.1 MB (53074258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0972c1a670119e90a85e346dceaf38243a8ea98f58e791846fa0ab13c0883043`  
		Last Modified: Mon, 09 Oct 2017 23:53:10 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b4aee5295dae8d6b2110a64bc94f07db8d7041e5b00927ee9a8576e3d2669f`  
		Last Modified: Mon, 09 Oct 2017 23:53:10 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81cd7536ee9d4ace6ddff9ea0911389d077b820f595ffa051209d8602221bc`  
		Last Modified: Mon, 09 Oct 2017 23:53:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:5f6f27abd461d2ed3dcbf61da39ecb87d47cbf341fad6e75f5b26246d9a44522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:b87c44c3fc2e253086f028de74a255be189b7aab53638893630f1b0411b1f5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135492032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18017b24230730d28a03027fcc2e763c3e5ddbb6a4d63228cad348cdcca1c9a4`
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
# Mon, 09 Oct 2017 23:44:47 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 09 Oct 2017 23:44:48 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 09 Oct 2017 23:44:48 GMT
VOLUME [/var/lib/mysql]
# Mon, 09 Oct 2017 23:44:48 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:44:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 09 Oct 2017 23:44:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:44:50 GMT
EXPOSE 3306/tcp
# Mon, 09 Oct 2017 23:44:50 GMT
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
	-	`sha256:022f1eddae97601069465c437718b5bd3965c58a1485a7a3acd44c9d01395047`  
		Last Modified: Mon, 09 Oct 2017 23:51:02 GMT  
		Size: 74.9 MB (74894287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34a3759133b7a7306697697d47a6884e6aa8f5ba6fa8ea369bab6dac0c45826`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999fcc6779467675e5fd50a1693e4e81e724c02be81a375b2027e58363901b08`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182b32481ab4cbca541d76def92b2a99323db411f126cf2af124b1a68c1292aa`  
		Last Modified: Mon, 09 Oct 2017 23:50:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
