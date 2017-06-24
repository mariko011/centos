## `mariadb:latest`

```console
$ docker pull mariadb@sha256:1faf3bc0e0aa435b5959dbb2e9ded29da54a90b92a3ebee0c4122ce8c2eb5e22
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134875388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aac8c9dd09107d5f960e97c19fcb52641f73ee73f14d8fa5070a3e01c60f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:29:51 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 23 Jun 2017 00:29:52 GMT
ENV MARIADB_VERSION=10.1.24+maria-1~jessie
# Fri, 23 Jun 2017 00:29:54 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:30:39 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:30:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:30:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:30:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:30:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:30:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:30:46 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:30:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10113bd1f29a33ae7afd71dac280ccec41123011f70f0fee504e3693436eec60`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d7a63598168b2b6e0d7937c58d9e88dfdf38ac636f26436f8613f498485e97`  
		Last Modified: Sat, 24 Jun 2017 12:45:26 GMT  
		Size: 74.3 MB (74255941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21016304318349f51ee98f82a2d8402aa04bbccf92f8840a4a5a00063ea7faaa`  
		Last Modified: Sat, 24 Jun 2017 12:45:10 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391d2c84daf95545de9f92a840b4e9a175593589dc4f12b15bc456aaa2370e8a`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973af6231c98e373a3dfdd974fa83f5ab53767561f4328378c32d5d9667861cb`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
