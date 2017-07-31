<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.3.0`](#mariadb1030)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.2.7`](#mariadb1027)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.1.25`](#mariadb10125)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.0.31`](#mariadb10031)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.57`](#mariadb5557)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.3.0`

```console
$ docker pull mariadb@sha256:745b1c0240a1d779f2ddf0cd89b1aa332670ef052a361ac1725302ced9c56c99
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.7 MB (135709080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256ded02510dc8592683651504f65f22246af1f63e3f573b0b4c73e4ef90d62f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:13:22 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 26 Jul 2017 06:13:22 GMT
ENV MARIADB_VERSION=10.3.0+maria~jessie
# Wed, 26 Jul 2017 06:13:23 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:50:13 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:50:14 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:50:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:50:15 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:50:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:50:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:50:16 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:50:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b52fe79016d0bc8abf72b0d579ce14ad8af4edf3ccb090fac11e3d6914ff0e3`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9ebad14ecaee04fc1f1f04ba1ecffa0e3072ebe651dbbd65c0a6eeca2b7c17`  
		Last Modified: Mon, 31 Jul 2017 18:54:28 GMT  
		Size: 75.1 MB (75101394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47acc200ba90badb5206898a95ef8ab5cbe33890d39477064e4ede902c09e67`  
		Last Modified: Mon, 31 Jul 2017 18:54:12 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bdd2b0127444ffecb6438d7c0b0fd998cfea0d7a726fc65438f4669976da94`  
		Last Modified: Mon, 31 Jul 2017 18:54:12 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238dbefa833702fdad95e28a8b0856860b726a7c8f15224cd3652fea3f45313b`  
		Last Modified: Mon, 31 Jul 2017 18:54:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:745b1c0240a1d779f2ddf0cd89b1aa332670ef052a361ac1725302ced9c56c99
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.7 MB (135709080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256ded02510dc8592683651504f65f22246af1f63e3f573b0b4c73e4ef90d62f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:13:22 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 26 Jul 2017 06:13:22 GMT
ENV MARIADB_VERSION=10.3.0+maria~jessie
# Wed, 26 Jul 2017 06:13:23 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:50:13 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:50:14 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:50:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:50:15 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:50:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:50:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:50:16 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:50:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b52fe79016d0bc8abf72b0d579ce14ad8af4edf3ccb090fac11e3d6914ff0e3`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9ebad14ecaee04fc1f1f04ba1ecffa0e3072ebe651dbbd65c0a6eeca2b7c17`  
		Last Modified: Mon, 31 Jul 2017 18:54:28 GMT  
		Size: 75.1 MB (75101394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47acc200ba90badb5206898a95ef8ab5cbe33890d39477064e4ede902c09e67`  
		Last Modified: Mon, 31 Jul 2017 18:54:12 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bdd2b0127444ffecb6438d7c0b0fd998cfea0d7a726fc65438f4669976da94`  
		Last Modified: Mon, 31 Jul 2017 18:54:12 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238dbefa833702fdad95e28a8b0856860b726a7c8f15224cd3652fea3f45313b`  
		Last Modified: Mon, 31 Jul 2017 18:54:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.7`

```console
$ docker pull mariadb@sha256:8ea33570152349b827d7121b88dc3f44a64e1cc7646cfae01faee4824b9b0007
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135518901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff2b852d8bf3975c92fd795a973d3794da04d64c2a6f72689fa5ba78b2fed7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:14:07 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Jul 2017 06:14:08 GMT
ENV MARIADB_VERSION=10.2.7+maria~jessie
# Wed, 26 Jul 2017 06:14:08 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:52:00 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:52:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:52:01 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:52:01 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:52:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:52:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:52:02 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:52:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad135be9a5db2cf2c992b2c74450e15194373b321b6b77e82ecb0f0d529e9d`  
		Last Modified: Wed, 26 Jul 2017 06:18:10 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb60a21b125b262b957b8fe3cc008b335f4db4cc21dc14a314e7edda7df6c3f7`  
		Last Modified: Mon, 31 Jul 2017 18:55:03 GMT  
		Size: 74.9 MB (74911214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8313b6b444b990849f7b7725849f929820bc304881100066552072a886d505e3`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5891f0cb9ab8d90f55b778f145d10ce667113cd261dc162b68289bbaaa55c51f`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b71a694f6c8a674bea3e9bede28eef24f0ec431783fa34aaece7467daa2a3e`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:8ea33570152349b827d7121b88dc3f44a64e1cc7646cfae01faee4824b9b0007
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135518901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff2b852d8bf3975c92fd795a973d3794da04d64c2a6f72689fa5ba78b2fed7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:14:07 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Jul 2017 06:14:08 GMT
ENV MARIADB_VERSION=10.2.7+maria~jessie
# Wed, 26 Jul 2017 06:14:08 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:52:00 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:52:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:52:01 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:52:01 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:52:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:52:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:52:02 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:52:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad135be9a5db2cf2c992b2c74450e15194373b321b6b77e82ecb0f0d529e9d`  
		Last Modified: Wed, 26 Jul 2017 06:18:10 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb60a21b125b262b957b8fe3cc008b335f4db4cc21dc14a314e7edda7df6c3f7`  
		Last Modified: Mon, 31 Jul 2017 18:55:03 GMT  
		Size: 74.9 MB (74911214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8313b6b444b990849f7b7725849f929820bc304881100066552072a886d505e3`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5891f0cb9ab8d90f55b778f145d10ce667113cd261dc162b68289bbaaa55c51f`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b71a694f6c8a674bea3e9bede28eef24f0ec431783fa34aaece7467daa2a3e`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:8ea33570152349b827d7121b88dc3f44a64e1cc7646cfae01faee4824b9b0007
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135518901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff2b852d8bf3975c92fd795a973d3794da04d64c2a6f72689fa5ba78b2fed7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:14:07 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Jul 2017 06:14:08 GMT
ENV MARIADB_VERSION=10.2.7+maria~jessie
# Wed, 26 Jul 2017 06:14:08 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:52:00 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:52:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:52:01 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:52:01 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:52:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:52:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:52:02 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:52:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad135be9a5db2cf2c992b2c74450e15194373b321b6b77e82ecb0f0d529e9d`  
		Last Modified: Wed, 26 Jul 2017 06:18:10 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb60a21b125b262b957b8fe3cc008b335f4db4cc21dc14a314e7edda7df6c3f7`  
		Last Modified: Mon, 31 Jul 2017 18:55:03 GMT  
		Size: 74.9 MB (74911214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8313b6b444b990849f7b7725849f929820bc304881100066552072a886d505e3`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5891f0cb9ab8d90f55b778f145d10ce667113cd261dc162b68289bbaaa55c51f`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b71a694f6c8a674bea3e9bede28eef24f0ec431783fa34aaece7467daa2a3e`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:8ea33570152349b827d7121b88dc3f44a64e1cc7646cfae01faee4824b9b0007
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135518901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff2b852d8bf3975c92fd795a973d3794da04d64c2a6f72689fa5ba78b2fed7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:14:07 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 26 Jul 2017 06:14:08 GMT
ENV MARIADB_VERSION=10.2.7+maria~jessie
# Wed, 26 Jul 2017 06:14:08 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:52:00 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:52:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:52:01 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:52:01 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:52:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:52:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:52:02 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:52:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ad135be9a5db2cf2c992b2c74450e15194373b321b6b77e82ecb0f0d529e9d`  
		Last Modified: Wed, 26 Jul 2017 06:18:10 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb60a21b125b262b957b8fe3cc008b335f4db4cc21dc14a314e7edda7df6c3f7`  
		Last Modified: Mon, 31 Jul 2017 18:55:03 GMT  
		Size: 74.9 MB (74911214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8313b6b444b990849f7b7725849f929820bc304881100066552072a886d505e3`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5891f0cb9ab8d90f55b778f145d10ce667113cd261dc162b68289bbaaa55c51f`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b71a694f6c8a674bea3e9bede28eef24f0ec431783fa34aaece7467daa2a3e`  
		Last Modified: Mon, 31 Jul 2017 18:54:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.25`

```console
$ docker pull mariadb@sha256:1fc309749dc6b2df1eb651905fa95a82132622d64408ac6a72745ef3351734e0
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.25` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134902193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3d6716a9673105e78c5eb4943425eb03d8e8f50eb3128fd99c0fd0f0959516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:14:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 26 Jul 2017 06:14:56 GMT
ENV MARIADB_VERSION=10.1.25+maria-1~jessie
# Wed, 26 Jul 2017 06:14:56 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:52:51 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:52:51 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:52:52 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:52:52 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:52:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:52:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:52:53 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:52:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaced43ed75687a5766a293410e96e0f93b432b3d29029a5510a67a5fe0f43ec`  
		Last Modified: Wed, 26 Jul 2017 06:18:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487f16cb38993c414991e4b7a31ca805afb12f8f660c434f50d95ea994ec0896`  
		Last Modified: Mon, 31 Jul 2017 18:55:44 GMT  
		Size: 74.3 MB (74294507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94fb1421b7221b2a009dd93bcbdcffec84e4c9a575c88a4e8cff3906d3ad101a`  
		Last Modified: Mon, 31 Jul 2017 18:55:30 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705a3a1612514f6deb234f9da24b599e9b9b6cd9d20dc87b214a2aa00a974b48`  
		Last Modified: Mon, 31 Jul 2017 18:55:30 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608131f80a695c4179f2f7b7f9a01c8847833bcd8b8852f1d02f915899aa201a`  
		Last Modified: Mon, 31 Jul 2017 18:55:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:1fc309749dc6b2df1eb651905fa95a82132622d64408ac6a72745ef3351734e0
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134902193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3d6716a9673105e78c5eb4943425eb03d8e8f50eb3128fd99c0fd0f0959516`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:14:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 26 Jul 2017 06:14:56 GMT
ENV MARIADB_VERSION=10.1.25+maria-1~jessie
# Wed, 26 Jul 2017 06:14:56 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:52:51 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:52:51 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:52:52 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:52:52 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:52:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:52:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:52:53 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:52:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaced43ed75687a5766a293410e96e0f93b432b3d29029a5510a67a5fe0f43ec`  
		Last Modified: Wed, 26 Jul 2017 06:18:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487f16cb38993c414991e4b7a31ca805afb12f8f660c434f50d95ea994ec0896`  
		Last Modified: Mon, 31 Jul 2017 18:55:44 GMT  
		Size: 74.3 MB (74294507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94fb1421b7221b2a009dd93bcbdcffec84e4c9a575c88a4e8cff3906d3ad101a`  
		Last Modified: Mon, 31 Jul 2017 18:55:30 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705a3a1612514f6deb234f9da24b599e9b9b6cd9d20dc87b214a2aa00a974b48`  
		Last Modified: Mon, 31 Jul 2017 18:55:30 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608131f80a695c4179f2f7b7f9a01c8847833bcd8b8852f1d02f915899aa201a`  
		Last Modified: Mon, 31 Jul 2017 18:55:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.31`

```console
$ docker pull mariadb@sha256:e5639ea198b39a28d1c5b8686d1be1ea7eef02d6a49a494fa934bec3142e8d5f
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.31` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119786162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5339ddfca75185d90b4f1e9c27a44aa0dcaa25125f773c9cd9eea68f5b225a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:15:55 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 26 Jul 2017 06:15:55 GMT
ENV MARIADB_VERSION=10.0.31+maria-1~jessie
# Wed, 26 Jul 2017 06:15:55 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:53:41 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:53:42 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:53:42 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:53:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:53:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:53:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:53:44 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:53:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10939884d53542d75175ef1d68315e215d1bb1c448357986a1f311fdc6320cb8`  
		Last Modified: Wed, 26 Jul 2017 06:19:12 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc0799117908868e815a773e7ea5261b139d049888b6cc686e2d3c6d0b0f1b0`  
		Last Modified: Mon, 31 Jul 2017 18:56:13 GMT  
		Size: 59.2 MB (59178636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bdb2bff98383449e72ab913d1dc9fd4501992955b9b24d70510fd73d117e6c`  
		Last Modified: Mon, 31 Jul 2017 18:56:01 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa19e7dbfc55714cc37d2a404dc40ae2e8eee730cff7bde4ba86531ed480c71`  
		Last Modified: Mon, 31 Jul 2017 18:56:01 GMT  
		Size: 2.5 KB (2544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26bab886cf1fc48b3ea49f80188766e1b0fe4cb96ef8aa65b82aaab831faefa7`  
		Last Modified: Mon, 31 Jul 2017 18:56:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:e5639ea198b39a28d1c5b8686d1be1ea7eef02d6a49a494fa934bec3142e8d5f
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119786162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5339ddfca75185d90b4f1e9c27a44aa0dcaa25125f773c9cd9eea68f5b225a86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:12:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:12:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:12:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:13:17 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:13:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:13:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:15:55 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 26 Jul 2017 06:15:55 GMT
ENV MARIADB_VERSION=10.0.31+maria-1~jessie
# Wed, 26 Jul 2017 06:15:55 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:53:41 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:53:42 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:53:42 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:53:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:53:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:53:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:53:44 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:53:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0639788facc8aa18de23575caec0e2d0882dfa83bedd716977efdb059bf79bf3`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70fa77eb2b9efa8274ef05ffb198abad794ef42b941b64b3b320f357195419`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 1.3 MB (1302805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724179e94999df0b67d41fce710f47386ce46090cc5d983a2b25ad0e3cdd4ce7`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fbc7ff5cf17414d463b3abf4a5ae06750dd99d4072cef632781c9e962f3940`  
		Last Modified: Wed, 26 Jul 2017 06:17:45 GMT  
		Size: 6.7 MB (6670271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5794cf4e5c245f8c969696d3cc245d2a4bb2c120e92faa81456e1f5159a16a`  
		Last Modified: Wed, 26 Jul 2017 06:17:44 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29a1331369b87a649c17b4e1a97aa09ebaad406c5715fcb09819082ebcf9b11`  
		Last Modified: Wed, 26 Jul 2017 06:17:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10939884d53542d75175ef1d68315e215d1bb1c448357986a1f311fdc6320cb8`  
		Last Modified: Wed, 26 Jul 2017 06:19:12 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc0799117908868e815a773e7ea5261b139d049888b6cc686e2d3c6d0b0f1b0`  
		Last Modified: Mon, 31 Jul 2017 18:56:13 GMT  
		Size: 59.2 MB (59178636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bdb2bff98383449e72ab913d1dc9fd4501992955b9b24d70510fd73d117e6c`  
		Last Modified: Mon, 31 Jul 2017 18:56:01 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa19e7dbfc55714cc37d2a404dc40ae2e8eee730cff7bde4ba86531ed480c71`  
		Last Modified: Mon, 31 Jul 2017 18:56:01 GMT  
		Size: 2.5 KB (2544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26bab886cf1fc48b3ea49f80188766e1b0fe4cb96ef8aa65b82aaab831faefa7`  
		Last Modified: Mon, 31 Jul 2017 18:56:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.57`

```console
$ docker pull mariadb@sha256:1851c0ff7c8b93250a70541e241de4a5cca0f72e8f8c2e3ca2cb43e20b5203ba
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.57` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98455281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0d09e720b92884c5b53553c5f9dbb4190c4fc24c762e3a4d5c29ca5ab4bae9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:16:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:16:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:17:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:17:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:17:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:17:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:17:20 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:17:21 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 26 Jul 2017 06:17:21 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Wed, 26 Jul 2017 06:17:21 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:54:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:54:03 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:54:03 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:54:04 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:54:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:54:05 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:54:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ef2981af17443eb4ec69d28b1165db717084abccaf4605a76ea24653ef3fea`  
		Last Modified: Wed, 26 Jul 2017 06:19:41 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0326ac7e9f77b3b1650f5531c6bd41e6a0ac00d0e395d9e24704790c13050c7`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 1.3 MB (1257636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63c30c1c274ac97050ebd2266457479fade66a14d2f3549ad70c3a4ee2a1711`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9082a90afcd4ad8c034cfe1c5d312591e66b91410354bbd6dea1895b09460d`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 6.0 MB (5991608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c64c7d2eb655e50e7073a53c1c2e3c344fae44489e063718ef15f12a4102cc1`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237fb36f6ae16859e66bcc5b645628f2dbedb10d124069f37f5f78d495a3bbbe`  
		Last Modified: Wed, 26 Jul 2017 06:19:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08be721fb5f13ede5653ae941acdcd1320a2c6cd7170ccb8f3bf468f02b38ec`  
		Last Modified: Wed, 26 Jul 2017 06:19:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994c99fe87c01bf5adcbc3d9d5ef65fc92e8604f04de001727176dc98b3c83a9`  
		Last Modified: Mon, 31 Jul 2017 18:56:38 GMT  
		Size: 53.1 MB (53073955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375796912dd3580b17283832994b59fc741110d2cdbf0c5a7150ee98ce72419b`  
		Last Modified: Mon, 31 Jul 2017 18:56:28 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ca67dd7db17db3ea2aaef52026fac413c866c0448bd1818a1be80f0c8c802b`  
		Last Modified: Mon, 31 Jul 2017 18:56:28 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd3e634b50d1500ca7b9f2177965cde1421835a0cf258c633cad43bbd9325aa`  
		Last Modified: Mon, 31 Jul 2017 18:56:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:1851c0ff7c8b93250a70541e241de4a5cca0f72e8f8c2e3ca2cb43e20b5203ba
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98455281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0d09e720b92884c5b53553c5f9dbb4190c4fc24c762e3a4d5c29ca5ab4bae9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:16:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:16:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:17:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:17:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:17:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:17:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:17:20 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:17:21 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 26 Jul 2017 06:17:21 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Wed, 26 Jul 2017 06:17:21 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:54:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:54:03 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:54:03 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:54:04 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:54:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:54:05 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:54:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ef2981af17443eb4ec69d28b1165db717084abccaf4605a76ea24653ef3fea`  
		Last Modified: Wed, 26 Jul 2017 06:19:41 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0326ac7e9f77b3b1650f5531c6bd41e6a0ac00d0e395d9e24704790c13050c7`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 1.3 MB (1257636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63c30c1c274ac97050ebd2266457479fade66a14d2f3549ad70c3a4ee2a1711`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9082a90afcd4ad8c034cfe1c5d312591e66b91410354bbd6dea1895b09460d`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 6.0 MB (5991608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c64c7d2eb655e50e7073a53c1c2e3c344fae44489e063718ef15f12a4102cc1`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237fb36f6ae16859e66bcc5b645628f2dbedb10d124069f37f5f78d495a3bbbe`  
		Last Modified: Wed, 26 Jul 2017 06:19:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08be721fb5f13ede5653ae941acdcd1320a2c6cd7170ccb8f3bf468f02b38ec`  
		Last Modified: Wed, 26 Jul 2017 06:19:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994c99fe87c01bf5adcbc3d9d5ef65fc92e8604f04de001727176dc98b3c83a9`  
		Last Modified: Mon, 31 Jul 2017 18:56:38 GMT  
		Size: 53.1 MB (53073955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375796912dd3580b17283832994b59fc741110d2cdbf0c5a7150ee98ce72419b`  
		Last Modified: Mon, 31 Jul 2017 18:56:28 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ca67dd7db17db3ea2aaef52026fac413c866c0448bd1818a1be80f0c8c802b`  
		Last Modified: Mon, 31 Jul 2017 18:56:28 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd3e634b50d1500ca7b9f2177965cde1421835a0cf258c633cad43bbd9325aa`  
		Last Modified: Mon, 31 Jul 2017 18:56:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:1851c0ff7c8b93250a70541e241de4a5cca0f72e8f8c2e3ca2cb43e20b5203ba
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98455281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0d09e720b92884c5b53553c5f9dbb4190c4fc24c762e3a4d5c29ca5ab4bae9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:16:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 26 Jul 2017 06:16:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:17:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 06:17:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:17:18 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 26 Jul 2017 06:17:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:17:20 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 26 Jul 2017 06:17:21 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 26 Jul 2017 06:17:21 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Wed, 26 Jul 2017 06:17:21 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 31 Jul 2017 18:54:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Jul 2017 18:54:03 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 31 Jul 2017 18:54:03 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Jul 2017 18:54:04 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:54:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 18:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:54:05 GMT
EXPOSE 3306/tcp
# Mon, 31 Jul 2017 18:54:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ef2981af17443eb4ec69d28b1165db717084abccaf4605a76ea24653ef3fea`  
		Last Modified: Wed, 26 Jul 2017 06:19:41 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0326ac7e9f77b3b1650f5531c6bd41e6a0ac00d0e395d9e24704790c13050c7`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 1.3 MB (1257636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63c30c1c274ac97050ebd2266457479fade66a14d2f3549ad70c3a4ee2a1711`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9082a90afcd4ad8c034cfe1c5d312591e66b91410354bbd6dea1895b09460d`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 6.0 MB (5991608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c64c7d2eb655e50e7073a53c1c2e3c344fae44489e063718ef15f12a4102cc1`  
		Last Modified: Wed, 26 Jul 2017 06:19:40 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237fb36f6ae16859e66bcc5b645628f2dbedb10d124069f37f5f78d495a3bbbe`  
		Last Modified: Wed, 26 Jul 2017 06:19:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08be721fb5f13ede5653ae941acdcd1320a2c6cd7170ccb8f3bf468f02b38ec`  
		Last Modified: Wed, 26 Jul 2017 06:19:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994c99fe87c01bf5adcbc3d9d5ef65fc92e8604f04de001727176dc98b3c83a9`  
		Last Modified: Mon, 31 Jul 2017 18:56:38 GMT  
		Size: 53.1 MB (53073955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375796912dd3580b17283832994b59fc741110d2cdbf0c5a7150ee98ce72419b`  
		Last Modified: Mon, 31 Jul 2017 18:56:28 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ca67dd7db17db3ea2aaef52026fac413c866c0448bd1818a1be80f0c8c802b`  
		Last Modified: Mon, 31 Jul 2017 18:56:28 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd3e634b50d1500ca7b9f2177965cde1421835a0cf258c633cad43bbd9325aa`  
		Last Modified: Mon, 31 Jul 2017 18:56:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
