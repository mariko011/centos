<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.33`](#mariadb10033)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.28`](#mariadb10128)
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
$ docker pull mariadb@sha256:2aaf51813345e9bf0cc8a5ad3c1e50e7914e29324809140ca076e5a946fa35fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:672472de5094edd8140b52355bcb207a8053ddfbe8358124089e9049037b51e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135545358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814266488c3c971ffc5873a330d34ef2cc1488866da2e2515cc6609556e249eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:47:33 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 04 Nov 2017 02:47:33 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Sat, 04 Nov 2017 02:47:34 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:48:16 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:48:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:48:16 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:48:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:48:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:48:18 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:48:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77d6b3a06774c27869f8070139a671c0f67ae4cb4548c5cb10c9c750e05655`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b11a53914c670f6a606ae9fcba04c88c69d3f1bce8dd9f7420d048c251ef0e`  
		Last Modified: Sat, 04 Nov 2017 02:55:24 GMT  
		Size: 75.0 MB (74950037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329f7386224b52f5216e106d21d9fd0450df7cf70eb6763a9518744b22cc6cfd`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be68c3c51dba467e73eb23c4efac6eaa969b097daad23f7773fa12c46415ea`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:10ecfac5fb3e516219db56838f51d8a03507f4491fd790c6e57c80f33bd35e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:3962cc428fa9c5ffa887d0424584b1a3405748d01692c1eb72a88be0a82f8a6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119864516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0750624840c705a0cb8d06fbb05d9fbc980fbe78fc3cd988adcd76ddd6aeec72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:50:25 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 04 Nov 2017 02:50:25 GMT
ENV MARIADB_VERSION=10.0.33+maria-1~jessie
# Sat, 04 Nov 2017 02:50:26 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:51:11 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:51:12 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:51:12 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:51:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:51:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:51:13 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:51:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825561921df1923781618874a31c50b77f30b6132b5eff3bc71ce494601efa21`  
		Last Modified: Sat, 04 Nov 2017 02:56:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daebd9c6366924472d4d2de9ed89f3a0ec1b32cb3d1071f87024b9616aaaa52b`  
		Last Modified: Sat, 04 Nov 2017 02:56:48 GMT  
		Size: 59.3 MB (59269195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48101ab38f814767ff43f70d2fe4a47e4bcf364f60d75afda40443fbaaa03b71`  
		Last Modified: Sat, 04 Nov 2017 02:56:34 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b3bdd8929bb1db8eae5f6613bbd61c036afcfe30aab566bc1114201a83dc47`  
		Last Modified: Sat, 04 Nov 2017 02:56:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.33`

```console
$ docker pull mariadb@sha256:10ecfac5fb3e516219db56838f51d8a03507f4491fd790c6e57c80f33bd35e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.33` - linux; amd64

```console
$ docker pull mariadb@sha256:3962cc428fa9c5ffa887d0424584b1a3405748d01692c1eb72a88be0a82f8a6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119864516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0750624840c705a0cb8d06fbb05d9fbc980fbe78fc3cd988adcd76ddd6aeec72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:50:25 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 04 Nov 2017 02:50:25 GMT
ENV MARIADB_VERSION=10.0.33+maria-1~jessie
# Sat, 04 Nov 2017 02:50:26 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:51:11 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:51:12 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:51:12 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:51:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:51:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:51:13 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:51:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825561921df1923781618874a31c50b77f30b6132b5eff3bc71ce494601efa21`  
		Last Modified: Sat, 04 Nov 2017 02:56:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daebd9c6366924472d4d2de9ed89f3a0ec1b32cb3d1071f87024b9616aaaa52b`  
		Last Modified: Sat, 04 Nov 2017 02:56:48 GMT  
		Size: 59.3 MB (59269195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48101ab38f814767ff43f70d2fe4a47e4bcf364f60d75afda40443fbaaa03b71`  
		Last Modified: Sat, 04 Nov 2017 02:56:34 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b3bdd8929bb1db8eae5f6613bbd61c036afcfe30aab566bc1114201a83dc47`  
		Last Modified: Sat, 04 Nov 2017 02:56:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:11bde1d25a6f47873ef02c93dea9df0da4f6c6c2906417e00fe7e442ad19216c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:9da458d257664a35bb65b8de2e5f0279f8d5fef405852ed41cddc182000ea049
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134922900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d8352ccab0c60c2a79d6aff21b53275f2ca83e6a2e54c8540dc254c8f44e62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:48:40 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 04 Nov 2017 02:48:41 GMT
ENV MARIADB_VERSION=10.1.28+maria-1~jessie
# Sat, 04 Nov 2017 02:48:42 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:49:50 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:49:50 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:49:50 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:49:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:49:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:49:53 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:49:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3cef2cf427ac9b7f1ce20d598e76bb7ea7cf6f17eda0fe7cb10cab0316ea0`  
		Last Modified: Sat, 04 Nov 2017 02:55:44 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1940f6b4451ffd1fe7a6291cfcc367a80d1d53ebcfa837a9680fe7376aad4413`  
		Last Modified: Sat, 04 Nov 2017 02:56:00 GMT  
		Size: 74.3 MB (74327581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41549af950962e63081fe4acb3952d128150d94d5f886eaa3177043fd14ad106`  
		Last Modified: Sat, 04 Nov 2017 02:55:44 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d71ac8375c9fd6e02d8b634e4709629f270b407b78f544df4e1411da7b4b762`  
		Last Modified: Sat, 04 Nov 2017 02:55:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.28`

```console
$ docker pull mariadb@sha256:11bde1d25a6f47873ef02c93dea9df0da4f6c6c2906417e00fe7e442ad19216c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.28` - linux; amd64

```console
$ docker pull mariadb@sha256:9da458d257664a35bb65b8de2e5f0279f8d5fef405852ed41cddc182000ea049
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134922900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d8352ccab0c60c2a79d6aff21b53275f2ca83e6a2e54c8540dc254c8f44e62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:48:40 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 04 Nov 2017 02:48:41 GMT
ENV MARIADB_VERSION=10.1.28+maria-1~jessie
# Sat, 04 Nov 2017 02:48:42 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:49:50 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:49:50 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:49:50 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:49:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:49:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:49:53 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:49:53 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3cef2cf427ac9b7f1ce20d598e76bb7ea7cf6f17eda0fe7cb10cab0316ea0`  
		Last Modified: Sat, 04 Nov 2017 02:55:44 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1940f6b4451ffd1fe7a6291cfcc367a80d1d53ebcfa837a9680fe7376aad4413`  
		Last Modified: Sat, 04 Nov 2017 02:56:00 GMT  
		Size: 74.3 MB (74327581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41549af950962e63081fe4acb3952d128150d94d5f886eaa3177043fd14ad106`  
		Last Modified: Sat, 04 Nov 2017 02:55:44 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d71ac8375c9fd6e02d8b634e4709629f270b407b78f544df4e1411da7b4b762`  
		Last Modified: Sat, 04 Nov 2017 02:55:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:2aaf51813345e9bf0cc8a5ad3c1e50e7914e29324809140ca076e5a946fa35fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:672472de5094edd8140b52355bcb207a8053ddfbe8358124089e9049037b51e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135545358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814266488c3c971ffc5873a330d34ef2cc1488866da2e2515cc6609556e249eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:47:33 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 04 Nov 2017 02:47:33 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Sat, 04 Nov 2017 02:47:34 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:48:16 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:48:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:48:16 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:48:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:48:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:48:18 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:48:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77d6b3a06774c27869f8070139a671c0f67ae4cb4548c5cb10c9c750e05655`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b11a53914c670f6a606ae9fcba04c88c69d3f1bce8dd9f7420d048c251ef0e`  
		Last Modified: Sat, 04 Nov 2017 02:55:24 GMT  
		Size: 75.0 MB (74950037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329f7386224b52f5216e106d21d9fd0450df7cf70eb6763a9518744b22cc6cfd`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be68c3c51dba467e73eb23c4efac6eaa969b097daad23f7773fa12c46415ea`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.10`

```console
$ docker pull mariadb@sha256:2aaf51813345e9bf0cc8a5ad3c1e50e7914e29324809140ca076e5a946fa35fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.10` - linux; amd64

```console
$ docker pull mariadb@sha256:672472de5094edd8140b52355bcb207a8053ddfbe8358124089e9049037b51e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135545358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814266488c3c971ffc5873a330d34ef2cc1488866da2e2515cc6609556e249eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:47:33 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 04 Nov 2017 02:47:33 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Sat, 04 Nov 2017 02:47:34 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:48:16 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:48:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:48:16 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:48:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:48:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:48:18 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:48:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77d6b3a06774c27869f8070139a671c0f67ae4cb4548c5cb10c9c750e05655`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b11a53914c670f6a606ae9fcba04c88c69d3f1bce8dd9f7420d048c251ef0e`  
		Last Modified: Sat, 04 Nov 2017 02:55:24 GMT  
		Size: 75.0 MB (74950037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329f7386224b52f5216e106d21d9fd0450df7cf70eb6763a9518744b22cc6cfd`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be68c3c51dba467e73eb23c4efac6eaa969b097daad23f7773fa12c46415ea`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:2a34324811c878a6fbf85b21762deeb22b4a60c19a627849d3e1b531adccd63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:08cc56abb11a07e81f196fd5a2842fbcdadcb2ca18ae18a3c809dc2bae7f52ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135813487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fcb5d6e4e4fb9801c13acd0b5ba66141677a1920dd0fcf2051d6fe24af0aca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:46:37 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 04 Nov 2017 02:46:37 GMT
ENV MARIADB_VERSION=10.3.2+maria~jessie
# Sat, 04 Nov 2017 02:46:38 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:47:24 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:47:24 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:47:24 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:47:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:47:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:47:26 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:47:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c048da0ae5bef4f1ac6c9c09282f2e9266dd09b498dee9994b645b0149b14b7`  
		Last Modified: Sat, 04 Nov 2017 02:53:12 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208925076a62ab75ba127c2851237b0603abff6e3d50110e83a339874453172e`  
		Last Modified: Sat, 04 Nov 2017 02:54:28 GMT  
		Size: 75.2 MB (75218167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe9ee435ae4b1df94459239dd8d5466647c1827068f01431bcd172f53532c10`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef5b8fc9dcba508a7fd216b6708536747deb8f4d2572ec67349d2b4191853c8`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.2`

```console
$ docker pull mariadb@sha256:2a34324811c878a6fbf85b21762deeb22b4a60c19a627849d3e1b531adccd63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.2` - linux; amd64

```console
$ docker pull mariadb@sha256:08cc56abb11a07e81f196fd5a2842fbcdadcb2ca18ae18a3c809dc2bae7f52ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135813487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fcb5d6e4e4fb9801c13acd0b5ba66141677a1920dd0fcf2051d6fe24af0aca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:46:37 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 04 Nov 2017 02:46:37 GMT
ENV MARIADB_VERSION=10.3.2+maria~jessie
# Sat, 04 Nov 2017 02:46:38 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:47:24 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:47:24 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:47:24 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:47:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:47:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:47:26 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:47:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c048da0ae5bef4f1ac6c9c09282f2e9266dd09b498dee9994b645b0149b14b7`  
		Last Modified: Sat, 04 Nov 2017 02:53:12 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208925076a62ab75ba127c2851237b0603abff6e3d50110e83a339874453172e`  
		Last Modified: Sat, 04 Nov 2017 02:54:28 GMT  
		Size: 75.2 MB (75218167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe9ee435ae4b1df94459239dd8d5466647c1827068f01431bcd172f53532c10`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef5b8fc9dcba508a7fd216b6708536747deb8f4d2572ec67349d2b4191853c8`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:eea46192ae220e7032cc182bf37eea4299fd60f2d00ff423fc92d6951bfd543e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:133ed42e55a5e2695ec8359f4719d35d658311a15d23edc8df36553d41357fce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98453125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee9b82fbe16995d678dd6f8b2382e62386d299f39ae05234634987a11d4b81b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:51:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:51:25 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:51:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:51:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:52:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:52:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:52:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:52:21 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:52:21 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 04 Nov 2017 02:52:21 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Sat, 04 Nov 2017 02:52:22 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:52:41 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:52:41 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:52:41 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:52:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:52:43 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:52:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9612f0b7123ab1b83185743bd572cba1a9717ab4b95dbd1e76709d1dc20c24a9`  
		Last Modified: Sat, 04 Nov 2017 02:57:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309f171767c72149f9ee81bdaeedc877c1ba5bdef93a4b6fea7efa7e2c980eae`  
		Last Modified: Sat, 04 Nov 2017 02:57:03 GMT  
		Size: 1.3 MB (1257695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26846a4889e88a1347fdf70dd2b7e0895445e00050cc97bc56bbc0a59c778203`  
		Last Modified: Sat, 04 Nov 2017 02:57:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6109a3a304970b88718b20bf1a27c0237f98755abcb30e976db22b17b94973f4`  
		Last Modified: Sat, 04 Nov 2017 02:57:05 GMT  
		Size: 6.0 MB (5993205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b89fa5d57cc92102dcb9c9546f9303fed13b78ea36fa37e0d22dfe018bd34de`  
		Last Modified: Sat, 04 Nov 2017 02:57:01 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3e643b709872b173fd3e725f4a3829df80cd91fc12561a4a5aa1b9479abb82`  
		Last Modified: Sat, 04 Nov 2017 02:57:00 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7822c53b9603675556bed9d79862bb1ff5148e29dd4d209f664c18b523ac743f`  
		Last Modified: Sat, 04 Nov 2017 02:56:59 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76cf33ec503a29df47c7b78ee9b857415d745223ccf757a5643b63dc5ce9b51`  
		Last Modified: Sat, 04 Nov 2017 02:57:15 GMT  
		Size: 53.1 MB (53073063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b2ab815619c0dc32dc36234983cbdec259a2d220a3b57b5abbcd7d2e6efdb`  
		Last Modified: Sat, 04 Nov 2017 02:57:00 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d583fb41ee4ed9cdd389922f7acd378664549ca14afdd427390875761846996b`  
		Last Modified: Sat, 04 Nov 2017 02:56:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:eea46192ae220e7032cc182bf37eea4299fd60f2d00ff423fc92d6951bfd543e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:133ed42e55a5e2695ec8359f4719d35d658311a15d23edc8df36553d41357fce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98453125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee9b82fbe16995d678dd6f8b2382e62386d299f39ae05234634987a11d4b81b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:51:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:51:25 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:51:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:51:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:52:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:52:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:52:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:52:21 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:52:21 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 04 Nov 2017 02:52:21 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Sat, 04 Nov 2017 02:52:22 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:52:41 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:52:41 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:52:41 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:52:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:52:43 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:52:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9612f0b7123ab1b83185743bd572cba1a9717ab4b95dbd1e76709d1dc20c24a9`  
		Last Modified: Sat, 04 Nov 2017 02:57:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309f171767c72149f9ee81bdaeedc877c1ba5bdef93a4b6fea7efa7e2c980eae`  
		Last Modified: Sat, 04 Nov 2017 02:57:03 GMT  
		Size: 1.3 MB (1257695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26846a4889e88a1347fdf70dd2b7e0895445e00050cc97bc56bbc0a59c778203`  
		Last Modified: Sat, 04 Nov 2017 02:57:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6109a3a304970b88718b20bf1a27c0237f98755abcb30e976db22b17b94973f4`  
		Last Modified: Sat, 04 Nov 2017 02:57:05 GMT  
		Size: 6.0 MB (5993205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b89fa5d57cc92102dcb9c9546f9303fed13b78ea36fa37e0d22dfe018bd34de`  
		Last Modified: Sat, 04 Nov 2017 02:57:01 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3e643b709872b173fd3e725f4a3829df80cd91fc12561a4a5aa1b9479abb82`  
		Last Modified: Sat, 04 Nov 2017 02:57:00 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7822c53b9603675556bed9d79862bb1ff5148e29dd4d209f664c18b523ac743f`  
		Last Modified: Sat, 04 Nov 2017 02:56:59 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76cf33ec503a29df47c7b78ee9b857415d745223ccf757a5643b63dc5ce9b51`  
		Last Modified: Sat, 04 Nov 2017 02:57:15 GMT  
		Size: 53.1 MB (53073063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b2ab815619c0dc32dc36234983cbdec259a2d220a3b57b5abbcd7d2e6efdb`  
		Last Modified: Sat, 04 Nov 2017 02:57:00 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d583fb41ee4ed9cdd389922f7acd378664549ca14afdd427390875761846996b`  
		Last Modified: Sat, 04 Nov 2017 02:56:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.58`

```console
$ docker pull mariadb@sha256:eea46192ae220e7032cc182bf37eea4299fd60f2d00ff423fc92d6951bfd543e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.58` - linux; amd64

```console
$ docker pull mariadb@sha256:133ed42e55a5e2695ec8359f4719d35d658311a15d23edc8df36553d41357fce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98453125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee9b82fbe16995d678dd6f8b2382e62386d299f39ae05234634987a11d4b81b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:51:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:51:25 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:51:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:51:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:52:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:52:02 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:52:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:52:21 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:52:21 GMT
ENV MARIADB_MAJOR=5.5
# Sat, 04 Nov 2017 02:52:21 GMT
ENV MARIADB_VERSION=5.5.58+maria-1~wheezy
# Sat, 04 Nov 2017 02:52:22 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:52:41 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:52:41 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:52:41 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:52:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:52:43 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:52:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9612f0b7123ab1b83185743bd572cba1a9717ab4b95dbd1e76709d1dc20c24a9`  
		Last Modified: Sat, 04 Nov 2017 02:57:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309f171767c72149f9ee81bdaeedc877c1ba5bdef93a4b6fea7efa7e2c980eae`  
		Last Modified: Sat, 04 Nov 2017 02:57:03 GMT  
		Size: 1.3 MB (1257695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26846a4889e88a1347fdf70dd2b7e0895445e00050cc97bc56bbc0a59c778203`  
		Last Modified: Sat, 04 Nov 2017 02:57:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6109a3a304970b88718b20bf1a27c0237f98755abcb30e976db22b17b94973f4`  
		Last Modified: Sat, 04 Nov 2017 02:57:05 GMT  
		Size: 6.0 MB (5993205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b89fa5d57cc92102dcb9c9546f9303fed13b78ea36fa37e0d22dfe018bd34de`  
		Last Modified: Sat, 04 Nov 2017 02:57:01 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3e643b709872b173fd3e725f4a3829df80cd91fc12561a4a5aa1b9479abb82`  
		Last Modified: Sat, 04 Nov 2017 02:57:00 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7822c53b9603675556bed9d79862bb1ff5148e29dd4d209f664c18b523ac743f`  
		Last Modified: Sat, 04 Nov 2017 02:56:59 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76cf33ec503a29df47c7b78ee9b857415d745223ccf757a5643b63dc5ce9b51`  
		Last Modified: Sat, 04 Nov 2017 02:57:15 GMT  
		Size: 53.1 MB (53073063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b2ab815619c0dc32dc36234983cbdec259a2d220a3b57b5abbcd7d2e6efdb`  
		Last Modified: Sat, 04 Nov 2017 02:57:00 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d583fb41ee4ed9cdd389922f7acd378664549ca14afdd427390875761846996b`  
		Last Modified: Sat, 04 Nov 2017 02:56:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:2aaf51813345e9bf0cc8a5ad3c1e50e7914e29324809140ca076e5a946fa35fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:672472de5094edd8140b52355bcb207a8053ddfbe8358124089e9049037b51e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135545358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814266488c3c971ffc5873a330d34ef2cc1488866da2e2515cc6609556e249eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 02:45:11 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 04 Nov 2017 02:45:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 02:46:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 02:46:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 02:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:46:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 04 Nov 2017 02:46:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 02:46:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 04 Nov 2017 02:47:33 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 04 Nov 2017 02:47:33 GMT
ENV MARIADB_VERSION=10.2.10+maria~jessie
# Sat, 04 Nov 2017 02:47:34 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 04 Nov 2017 02:48:16 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 04 Nov 2017 02:48:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Nov 2017 02:48:16 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 04 Nov 2017 02:48:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 02:48:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 02:48:18 GMT
EXPOSE 3306/tcp
# Sat, 04 Nov 2017 02:48:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911e853cbc1bdbbb1b41a11dcf14774265fb1d4a1dcf76be577666c9334f9ff`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7dd215ca9456b567e4b1c034012c570b3e517769e47062d82d71c1781a6168`  
		Last Modified: Sat, 04 Nov 2017 02:53:17 GMT  
		Size: 1.3 MB (1302954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718a1fe9cb1ea9933d525483154405a1a69839dc17bee6d2e6b59852e55eef5b`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eb7230dce004818f2353a057aa94dcfec7065c4b2e73f8139b1c25854d74d`  
		Last Modified: Sat, 04 Nov 2017 02:53:19 GMT  
		Size: 6.7 MB (6670894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beff7e2582a77d1215ab6eee59d82a35d5224c2068c10ba7a20d911c1addb2fb`  
		Last Modified: Sat, 04 Nov 2017 02:53:15 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6206648e322ea60951ca62890891ec9e76a7821985add5f3b179894ab8f5a`  
		Last Modified: Sat, 04 Nov 2017 02:53:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d77d6b3a06774c27869f8070139a671c0f67ae4cb4548c5cb10c9c750e05655`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b11a53914c670f6a606ae9fcba04c88c69d3f1bce8dd9f7420d048c251ef0e`  
		Last Modified: Sat, 04 Nov 2017 02:55:24 GMT  
		Size: 75.0 MB (74950037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329f7386224b52f5216e106d21d9fd0450df7cf70eb6763a9518744b22cc6cfd`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be68c3c51dba467e73eb23c4efac6eaa969b097daad23f7773fa12c46415ea`  
		Last Modified: Sat, 04 Nov 2017 02:55:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
