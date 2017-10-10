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
$ docker pull mariadb@sha256:61fe3a86d784d597e6823f3df1c44921d1d72af01e0e21c1df15899c7917742a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:baa86bcf9ce689e51216485513d27a4de815b73f2a5e16bd18ccce01ffe92b71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135871922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb397fd36c8848f868767ce637ea2c0966d20d933d6589ac56abd7ad642a108`
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
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:38:33 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 13 Sep 2017 11:38:33 GMT
ENV MARIADB_VERSION=10.3.1+maria~jessie
# Wed, 13 Sep 2017 11:38:34 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:39:14 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:39:15 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:39:15 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:39:15 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:39:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:39:16 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:39:16 GMT
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
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd17e587fbd9636d9d6cef71a115d94c2ffe0f8c354c916d7ed0962781a66ed0`  
		Last Modified: Wed, 13 Sep 2017 11:42:50 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d046013ba82019538b4830bc33a51ca0ef400544bc242e68921cf99d9e71390`  
		Last Modified: Wed, 13 Sep 2017 11:43:20 GMT  
		Size: 75.3 MB (75273850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4eb8cb3749f7d0898bfc4ba2d1d82b15aee236e83f4bb1d854df7c64494c40`  
		Last Modified: Wed, 13 Sep 2017 11:42:49 GMT  
		Size: 2.7 KB (2676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5899b88b0c275a0a63fbdc4ca9f43e2512d77a4b8bb556a913b8f2596c3886`  
		Last Modified: Wed, 13 Sep 2017 11:42:49 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a66f137d74c6f6342cb0e66042e205d65666cde3805c7aa054182d60c8338a`  
		Last Modified: Wed, 13 Sep 2017 11:42:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.2`

**does not exist** (yet?)

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
