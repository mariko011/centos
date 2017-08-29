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
$ docker pull mariadb@sha256:90e2261056d13f7288e3907f70a4870be77ea15bd04b1a9aedf85efc283a51e1
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135880940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fabb6ed33ee0239016b1fa13f905f7de4b087d3c33fed972b2d5a44ab095957`
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
# Tue, 29 Aug 2017 20:29:20 GMT
ENV MARIADB_VERSION=10.3.1+maria~jessie
# Tue, 29 Aug 2017 20:29:20 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 29 Aug 2017 20:30:12 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 29 Aug 2017 20:30:13 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 29 Aug 2017 20:30:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 29 Aug 2017 20:30:14 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:30:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 29 Aug 2017 20:30:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:30:15 GMT
EXPOSE 3306/tcp
# Tue, 29 Aug 2017 20:30:15 GMT
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
	-	`sha256:4a33d844dcbaac9c39356d220dca95cc280f9a3da37293e01dc9bf53e2f2f705`  
		Last Modified: Tue, 29 Aug 2017 20:30:25 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59c52fcfbcd2990375f8b3ab332122de741795ae99a3d4a234260066dfe0034`  
		Last Modified: Tue, 29 Aug 2017 20:30:39 GMT  
		Size: 75.3 MB (75273252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da920bfdd09669acdf6d820cf3e28b6e2da9119b9aef3efc18ec0de40de46ccc`  
		Last Modified: Tue, 29 Aug 2017 20:30:25 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af30ee51493e41394ef913cb8dc32a2ec7a050c3333bdf0c3ea857431db7e0`  
		Last Modified: Tue, 29 Aug 2017 20:30:25 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d232c95c907f580483da105407292b1e49ad148f442e21ef3989b7795ab9bf0b`  
		Last Modified: Tue, 29 Aug 2017 20:30:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:90e2261056d13f7288e3907f70a4870be77ea15bd04b1a9aedf85efc283a51e1
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135880940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fabb6ed33ee0239016b1fa13f905f7de4b087d3c33fed972b2d5a44ab095957`
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
# Tue, 29 Aug 2017 20:29:20 GMT
ENV MARIADB_VERSION=10.3.1+maria~jessie
# Tue, 29 Aug 2017 20:29:20 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 29 Aug 2017 20:30:12 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 29 Aug 2017 20:30:13 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 29 Aug 2017 20:30:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 29 Aug 2017 20:30:14 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:30:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 29 Aug 2017 20:30:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:30:15 GMT
EXPOSE 3306/tcp
# Tue, 29 Aug 2017 20:30:15 GMT
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
	-	`sha256:4a33d844dcbaac9c39356d220dca95cc280f9a3da37293e01dc9bf53e2f2f705`  
		Last Modified: Tue, 29 Aug 2017 20:30:25 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59c52fcfbcd2990375f8b3ab332122de741795ae99a3d4a234260066dfe0034`  
		Last Modified: Tue, 29 Aug 2017 20:30:39 GMT  
		Size: 75.3 MB (75273252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da920bfdd09669acdf6d820cf3e28b6e2da9119b9aef3efc18ec0de40de46ccc`  
		Last Modified: Tue, 29 Aug 2017 20:30:25 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af30ee51493e41394ef913cb8dc32a2ec7a050c3333bdf0c3ea857431db7e0`  
		Last Modified: Tue, 29 Aug 2017 20:30:25 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d232c95c907f580483da105407292b1e49ad148f442e21ef3989b7795ab9bf0b`  
		Last Modified: Tue, 29 Aug 2017 20:30:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.8`

```console
$ docker pull mariadb@sha256:801ba73f78da191339d1cf2acdb98f2ea6fe2d38974e838a4a5f1535563e4ed7
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135581415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58730544b81b4e89b0e78bbdea22e7ceed2cd063906171e2a49d8a650a7cd89f`
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
# Mon, 21 Aug 2017 19:09:35 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Mon, 21 Aug 2017 19:09:36 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 21 Aug 2017 19:10:24 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 21 Aug 2017 19:10:26 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 Aug 2017 19:10:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Aug 2017 19:10:26 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 21 Aug 2017 19:10:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 21 Aug 2017 19:10:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 19:10:28 GMT
EXPOSE 3306/tcp
# Mon, 21 Aug 2017 19:10:32 GMT
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
	-	`sha256:d9c9f0d8893c84a2d04e043ec5046d0ecc1e9c56eafd4497369f7c365ecfec9c`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8f74949a50b890152a2e1f1fc2efe13e1aca16f025102e1699ecf8f189d27`  
		Last Modified: Mon, 21 Aug 2017 19:11:09 GMT  
		Size: 75.0 MB (74973734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1281256e330d479c652a9205d6186dc55809334dabfa2492757d9017a10efba8`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc58a9ae8097fa02a4d735c69cf0aad1a853c9722bc16de59a08a589193533e`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 2.5 KB (2544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75c7c0e6fc3da227f95f9d239759d9783e40b7be8df2c30436e7aa64ea7829`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:801ba73f78da191339d1cf2acdb98f2ea6fe2d38974e838a4a5f1535563e4ed7
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135581415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58730544b81b4e89b0e78bbdea22e7ceed2cd063906171e2a49d8a650a7cd89f`
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
# Mon, 21 Aug 2017 19:09:35 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Mon, 21 Aug 2017 19:09:36 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 21 Aug 2017 19:10:24 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 21 Aug 2017 19:10:26 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 Aug 2017 19:10:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Aug 2017 19:10:26 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 21 Aug 2017 19:10:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 21 Aug 2017 19:10:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 19:10:28 GMT
EXPOSE 3306/tcp
# Mon, 21 Aug 2017 19:10:32 GMT
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
	-	`sha256:d9c9f0d8893c84a2d04e043ec5046d0ecc1e9c56eafd4497369f7c365ecfec9c`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8f74949a50b890152a2e1f1fc2efe13e1aca16f025102e1699ecf8f189d27`  
		Last Modified: Mon, 21 Aug 2017 19:11:09 GMT  
		Size: 75.0 MB (74973734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1281256e330d479c652a9205d6186dc55809334dabfa2492757d9017a10efba8`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc58a9ae8097fa02a4d735c69cf0aad1a853c9722bc16de59a08a589193533e`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 2.5 KB (2544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75c7c0e6fc3da227f95f9d239759d9783e40b7be8df2c30436e7aa64ea7829`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:801ba73f78da191339d1cf2acdb98f2ea6fe2d38974e838a4a5f1535563e4ed7
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135581415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58730544b81b4e89b0e78bbdea22e7ceed2cd063906171e2a49d8a650a7cd89f`
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
# Mon, 21 Aug 2017 19:09:35 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Mon, 21 Aug 2017 19:09:36 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 21 Aug 2017 19:10:24 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 21 Aug 2017 19:10:26 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 Aug 2017 19:10:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Aug 2017 19:10:26 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 21 Aug 2017 19:10:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 21 Aug 2017 19:10:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 19:10:28 GMT
EXPOSE 3306/tcp
# Mon, 21 Aug 2017 19:10:32 GMT
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
	-	`sha256:d9c9f0d8893c84a2d04e043ec5046d0ecc1e9c56eafd4497369f7c365ecfec9c`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8f74949a50b890152a2e1f1fc2efe13e1aca16f025102e1699ecf8f189d27`  
		Last Modified: Mon, 21 Aug 2017 19:11:09 GMT  
		Size: 75.0 MB (74973734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1281256e330d479c652a9205d6186dc55809334dabfa2492757d9017a10efba8`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc58a9ae8097fa02a4d735c69cf0aad1a853c9722bc16de59a08a589193533e`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 2.5 KB (2544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75c7c0e6fc3da227f95f9d239759d9783e40b7be8df2c30436e7aa64ea7829`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:801ba73f78da191339d1cf2acdb98f2ea6fe2d38974e838a4a5f1535563e4ed7
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135581415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58730544b81b4e89b0e78bbdea22e7ceed2cd063906171e2a49d8a650a7cd89f`
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
# Mon, 21 Aug 2017 19:09:35 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Mon, 21 Aug 2017 19:09:36 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 21 Aug 2017 19:10:24 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 21 Aug 2017 19:10:26 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 Aug 2017 19:10:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Aug 2017 19:10:26 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 21 Aug 2017 19:10:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 21 Aug 2017 19:10:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 19:10:28 GMT
EXPOSE 3306/tcp
# Mon, 21 Aug 2017 19:10:32 GMT
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
	-	`sha256:d9c9f0d8893c84a2d04e043ec5046d0ecc1e9c56eafd4497369f7c365ecfec9c`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8f74949a50b890152a2e1f1fc2efe13e1aca16f025102e1699ecf8f189d27`  
		Last Modified: Mon, 21 Aug 2017 19:11:09 GMT  
		Size: 75.0 MB (74973734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1281256e330d479c652a9205d6186dc55809334dabfa2492757d9017a10efba8`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc58a9ae8097fa02a4d735c69cf0aad1a853c9722bc16de59a08a589193533e`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 2.5 KB (2544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75c7c0e6fc3da227f95f9d239759d9783e40b7be8df2c30436e7aa64ea7829`  
		Last Modified: Mon, 21 Aug 2017 19:10:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.26`

```console
$ docker pull mariadb@sha256:61eb22f9319a6da3957623b72179bf44df419ecd0a37c67f654c065df03d30c3
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.26` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134922477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42a70fee7f59cb5bcc07bfdba056fd9bdeff69ac3f4feffa733d7074aff66d9b`
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
# Thu, 10 Aug 2017 22:30:20 GMT
ENV MARIADB_VERSION=10.1.26+maria-1~jessie
# Thu, 10 Aug 2017 22:30:21 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 10 Aug 2017 22:31:19 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 10 Aug 2017 22:31:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 10 Aug 2017 22:31:21 GMT
VOLUME [/var/lib/mysql]
# Thu, 10 Aug 2017 22:31:21 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 10 Aug 2017 22:31:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 10 Aug 2017 22:31:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 Aug 2017 22:31:22 GMT
EXPOSE 3306/tcp
# Thu, 10 Aug 2017 22:31:23 GMT
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
	-	`sha256:95d8fdec14afdd7b7e991c0ed8677c6006058cd76a60b89634c713fe6766b636`  
		Last Modified: Thu, 10 Aug 2017 22:32:13 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e19cef133fadaacb869d49d8bfeee4320dc8e7c9159bc91b8616d2eeeb605be`  
		Last Modified: Thu, 10 Aug 2017 22:32:30 GMT  
		Size: 74.3 MB (74314788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fd5c8b444a7e2b4dd5993edf24c3cf0db1c662c4004693619a7439003b3a03`  
		Last Modified: Thu, 10 Aug 2017 22:32:13 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6013f3f971fc74a68ebae4bbab211a5bc5d6660bb57b0b0cc92a1a9032d9049d`  
		Last Modified: Thu, 10 Aug 2017 22:32:12 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dd8b9f4211d0f0ee352e99df4c43a2f5072dc074ab25c387a41a7ab2fa2bec`  
		Last Modified: Thu, 10 Aug 2017 22:32:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:61eb22f9319a6da3957623b72179bf44df419ecd0a37c67f654c065df03d30c3
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134922477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42a70fee7f59cb5bcc07bfdba056fd9bdeff69ac3f4feffa733d7074aff66d9b`
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
# Thu, 10 Aug 2017 22:30:20 GMT
ENV MARIADB_VERSION=10.1.26+maria-1~jessie
# Thu, 10 Aug 2017 22:30:21 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 10 Aug 2017 22:31:19 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 10 Aug 2017 22:31:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 10 Aug 2017 22:31:21 GMT
VOLUME [/var/lib/mysql]
# Thu, 10 Aug 2017 22:31:21 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 10 Aug 2017 22:31:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 10 Aug 2017 22:31:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 Aug 2017 22:31:22 GMT
EXPOSE 3306/tcp
# Thu, 10 Aug 2017 22:31:23 GMT
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
	-	`sha256:95d8fdec14afdd7b7e991c0ed8677c6006058cd76a60b89634c713fe6766b636`  
		Last Modified: Thu, 10 Aug 2017 22:32:13 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e19cef133fadaacb869d49d8bfeee4320dc8e7c9159bc91b8616d2eeeb605be`  
		Last Modified: Thu, 10 Aug 2017 22:32:30 GMT  
		Size: 74.3 MB (74314788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fd5c8b444a7e2b4dd5993edf24c3cf0db1c662c4004693619a7439003b3a03`  
		Last Modified: Thu, 10 Aug 2017 22:32:13 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6013f3f971fc74a68ebae4bbab211a5bc5d6660bb57b0b0cc92a1a9032d9049d`  
		Last Modified: Thu, 10 Aug 2017 22:32:12 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dd8b9f4211d0f0ee352e99df4c43a2f5072dc074ab25c387a41a7ab2fa2bec`  
		Last Modified: Thu, 10 Aug 2017 22:32:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.32`

```console
$ docker pull mariadb@sha256:c3702cef19e261828c50299f8124ced4b7c72b6677e3910199a46d726fbdd103
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.32` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119797811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738bb8b3bcf0586189d53edf7c5619858fa6b4da6f5ad5d43d3751bdee76d1b1`
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
# Tue, 08 Aug 2017 18:35:07 GMT
ENV MARIADB_VERSION=10.0.32+maria-1~jessie
# Tue, 08 Aug 2017 18:35:08 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 08 Aug 2017 18:36:06 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Aug 2017 18:36:07 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 08 Aug 2017 18:36:07 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Aug 2017 18:36:07 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 08 Aug 2017 18:36:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 08 Aug 2017 18:36:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Aug 2017 18:36:09 GMT
EXPOSE 3306/tcp
# Tue, 08 Aug 2017 18:36:09 GMT
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
	-	`sha256:38d68801dcc86611a501902ca0fab9a4f49a2bcade03ecdfec9b44aa74d47159`  
		Last Modified: Tue, 08 Aug 2017 18:37:07 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4e065131be8e390955259c418260e258ae8bc0e2a95a43d87a0e80406d12ff`  
		Last Modified: Tue, 08 Aug 2017 18:37:18 GMT  
		Size: 59.2 MB (59190283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e6f0f55199fc6378e2530d51eb6ab9ed13f691559592f15a24b33bfac41c9e`  
		Last Modified: Tue, 08 Aug 2017 18:37:08 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afd9b5859d00f85b3ab5d7280842041ef1835af8c29ec9533c494856a7655fa`  
		Last Modified: Tue, 08 Aug 2017 18:37:07 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5f2239d5936a3628164a21ad66ce586df71c84b6e265d0c66cefe4348a3282`  
		Last Modified: Tue, 08 Aug 2017 18:37:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:c3702cef19e261828c50299f8124ced4b7c72b6677e3910199a46d726fbdd103
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119797811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738bb8b3bcf0586189d53edf7c5619858fa6b4da6f5ad5d43d3751bdee76d1b1`
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
# Tue, 08 Aug 2017 18:35:07 GMT
ENV MARIADB_VERSION=10.0.32+maria-1~jessie
# Tue, 08 Aug 2017 18:35:08 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 08 Aug 2017 18:36:06 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Aug 2017 18:36:07 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 08 Aug 2017 18:36:07 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Aug 2017 18:36:07 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 08 Aug 2017 18:36:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 08 Aug 2017 18:36:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Aug 2017 18:36:09 GMT
EXPOSE 3306/tcp
# Tue, 08 Aug 2017 18:36:09 GMT
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
	-	`sha256:38d68801dcc86611a501902ca0fab9a4f49a2bcade03ecdfec9b44aa74d47159`  
		Last Modified: Tue, 08 Aug 2017 18:37:07 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4e065131be8e390955259c418260e258ae8bc0e2a95a43d87a0e80406d12ff`  
		Last Modified: Tue, 08 Aug 2017 18:37:18 GMT  
		Size: 59.2 MB (59190283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e6f0f55199fc6378e2530d51eb6ab9ed13f691559592f15a24b33bfac41c9e`  
		Last Modified: Tue, 08 Aug 2017 18:37:08 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afd9b5859d00f85b3ab5d7280842041ef1835af8c29ec9533c494856a7655fa`  
		Last Modified: Tue, 08 Aug 2017 18:37:07 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5f2239d5936a3628164a21ad66ce586df71c84b6e265d0c66cefe4348a3282`  
		Last Modified: Tue, 08 Aug 2017 18:37:07 GMT  
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
