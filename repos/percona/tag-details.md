<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5.7.17`](#percona5717)
-	[`percona:5.7`](#percona57)
-	[`percona:5`](#percona5)
-	[`percona:latest`](#perconalatest)
-	[`percona:5.6.35`](#percona5635)
-	[`percona:5.6`](#percona56)
-	[`percona:5.5.54`](#percona5554)
-	[`percona:5.5`](#percona55)

## `percona:5.7.17`

```console
$ docker pull percona@sha256:2e2cb69f4347259b7a5f692d2197dc9ab56726cac97a87c74be533693825b000
```

-	Platforms:
	-	linux; amd64

### `percona:5.7.17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125433959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727978cafa873527230c9d396a477cd98209936d665f82502917de3130317384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:52:21 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 18:52:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 18:52:25 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jan 2017 18:52:25 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 07 Feb 2017 20:32:05 GMT
ENV PERCONA_VERSION=5.7.17-11-1.jessie
# Tue, 07 Feb 2017 20:32:30 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 07 Feb 2017 20:32:32 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Tue, 07 Feb 2017 20:32:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 07 Feb 2017 20:32:33 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Tue, 07 Feb 2017 20:32:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 07 Feb 2017 20:32:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Feb 2017 20:32:36 GMT
EXPOSE 3306/tcp
# Tue, 07 Feb 2017 20:32:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411e6fbe19a856d0c77595cea66f26da319518066a697c30d679a934928141c`  
		Last Modified: Wed, 18 Jan 2017 06:43:37 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d137990906d895c15dc563fca313108939f68a0b65aea80396281a8545685`  
		Last Modified: Wed, 18 Jan 2017 06:43:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1afa2a8e22fdd31325ac134a0d89e9f3963c508149fd932baadac613a9a5a7`  
		Last Modified: Tue, 07 Feb 2017 20:34:03 GMT  
		Size: 66.4 MB (66378497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecce6d3964a7be90bf93904b8ed4d3910daf2a1a71a36f549bf272b3a8f4d545`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 796.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a49de29bcebc326a25085f874451fd615caca9172d9e3d47029b7df9b4d18`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2083ecc2f9c9b6939d4c201ea3359c3eeeafa8de401eaf1cbff42013e58b106`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:2e2cb69f4347259b7a5f692d2197dc9ab56726cac97a87c74be533693825b000
```

-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125433959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727978cafa873527230c9d396a477cd98209936d665f82502917de3130317384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:52:21 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 18:52:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 18:52:25 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jan 2017 18:52:25 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 07 Feb 2017 20:32:05 GMT
ENV PERCONA_VERSION=5.7.17-11-1.jessie
# Tue, 07 Feb 2017 20:32:30 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 07 Feb 2017 20:32:32 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Tue, 07 Feb 2017 20:32:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 07 Feb 2017 20:32:33 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Tue, 07 Feb 2017 20:32:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 07 Feb 2017 20:32:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Feb 2017 20:32:36 GMT
EXPOSE 3306/tcp
# Tue, 07 Feb 2017 20:32:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411e6fbe19a856d0c77595cea66f26da319518066a697c30d679a934928141c`  
		Last Modified: Wed, 18 Jan 2017 06:43:37 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d137990906d895c15dc563fca313108939f68a0b65aea80396281a8545685`  
		Last Modified: Wed, 18 Jan 2017 06:43:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1afa2a8e22fdd31325ac134a0d89e9f3963c508149fd932baadac613a9a5a7`  
		Last Modified: Tue, 07 Feb 2017 20:34:03 GMT  
		Size: 66.4 MB (66378497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecce6d3964a7be90bf93904b8ed4d3910daf2a1a71a36f549bf272b3a8f4d545`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 796.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a49de29bcebc326a25085f874451fd615caca9172d9e3d47029b7df9b4d18`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2083ecc2f9c9b6939d4c201ea3359c3eeeafa8de401eaf1cbff42013e58b106`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5`

```console
$ docker pull percona@sha256:2e2cb69f4347259b7a5f692d2197dc9ab56726cac97a87c74be533693825b000
```

-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125433959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727978cafa873527230c9d396a477cd98209936d665f82502917de3130317384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:52:21 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 18:52:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 18:52:25 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jan 2017 18:52:25 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 07 Feb 2017 20:32:05 GMT
ENV PERCONA_VERSION=5.7.17-11-1.jessie
# Tue, 07 Feb 2017 20:32:30 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 07 Feb 2017 20:32:32 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Tue, 07 Feb 2017 20:32:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 07 Feb 2017 20:32:33 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Tue, 07 Feb 2017 20:32:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 07 Feb 2017 20:32:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Feb 2017 20:32:36 GMT
EXPOSE 3306/tcp
# Tue, 07 Feb 2017 20:32:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411e6fbe19a856d0c77595cea66f26da319518066a697c30d679a934928141c`  
		Last Modified: Wed, 18 Jan 2017 06:43:37 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d137990906d895c15dc563fca313108939f68a0b65aea80396281a8545685`  
		Last Modified: Wed, 18 Jan 2017 06:43:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1afa2a8e22fdd31325ac134a0d89e9f3963c508149fd932baadac613a9a5a7`  
		Last Modified: Tue, 07 Feb 2017 20:34:03 GMT  
		Size: 66.4 MB (66378497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecce6d3964a7be90bf93904b8ed4d3910daf2a1a71a36f549bf272b3a8f4d545`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 796.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a49de29bcebc326a25085f874451fd615caca9172d9e3d47029b7df9b4d18`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2083ecc2f9c9b6939d4c201ea3359c3eeeafa8de401eaf1cbff42013e58b106`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:2e2cb69f4347259b7a5f692d2197dc9ab56726cac97a87c74be533693825b000
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125433959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727978cafa873527230c9d396a477cd98209936d665f82502917de3130317384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:52:21 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 18:52:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 18:52:25 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jan 2017 18:52:25 GMT
ENV PERCONA_MAJOR=5.7
# Tue, 07 Feb 2017 20:32:05 GMT
ENV PERCONA_VERSION=5.7.17-11-1.jessie
# Tue, 07 Feb 2017 20:32:30 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 07 Feb 2017 20:32:32 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Tue, 07 Feb 2017 20:32:32 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 07 Feb 2017 20:32:33 GMT
COPY file:01e6982f4616ce5335aa8fc1b158e02657d5596a595c569bb9febb58755d8095 in /usr/local/bin/ 
# Tue, 07 Feb 2017 20:32:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 07 Feb 2017 20:32:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Feb 2017 20:32:36 GMT
EXPOSE 3306/tcp
# Tue, 07 Feb 2017 20:32:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411e6fbe19a856d0c77595cea66f26da319518066a697c30d679a934928141c`  
		Last Modified: Wed, 18 Jan 2017 06:43:37 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d137990906d895c15dc563fca313108939f68a0b65aea80396281a8545685`  
		Last Modified: Wed, 18 Jan 2017 06:43:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1afa2a8e22fdd31325ac134a0d89e9f3963c508149fd932baadac613a9a5a7`  
		Last Modified: Tue, 07 Feb 2017 20:34:03 GMT  
		Size: 66.4 MB (66378497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecce6d3964a7be90bf93904b8ed4d3910daf2a1a71a36f549bf272b3a8f4d545`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 796.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a49de29bcebc326a25085f874451fd615caca9172d9e3d47029b7df9b4d18`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2083ecc2f9c9b6939d4c201ea3359c3eeeafa8de401eaf1cbff42013e58b106`  
		Last Modified: Tue, 07 Feb 2017 20:33:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.35`

```console
$ docker pull percona@sha256:1078cb5a954492cab3daaa331cf5669d8eff2811b49a4d1db8ea47f06e056b64
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.35` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111026381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a498a2f1061c17783bd9690031548febc26fda17f009e04e13e6c1b908b44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:52:21 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 18:52:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 18:52:25 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jan 2017 18:53:40 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 08 Feb 2017 21:44:02 GMT
ENV PERCONA_VERSION=5.6.35-80.0-1.jessie
# Wed, 08 Feb 2017 21:44:33 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 08 Feb 2017 21:44:34 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 08 Feb 2017 21:44:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 Feb 2017 21:44:36 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 08 Feb 2017 21:44:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Feb 2017 21:44:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 21:44:39 GMT
EXPOSE 3306/tcp
# Wed, 08 Feb 2017 21:44:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411e6fbe19a856d0c77595cea66f26da319518066a697c30d679a934928141c`  
		Last Modified: Wed, 18 Jan 2017 06:43:37 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d137990906d895c15dc563fca313108939f68a0b65aea80396281a8545685`  
		Last Modified: Wed, 18 Jan 2017 06:43:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fc2d4bed8a302628c5f81b8509f216a68ca3f68132eced98e429fb6ccee741`  
		Last Modified: Wed, 08 Feb 2017 21:46:14 GMT  
		Size: 52.0 MB (51969825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8fdf56f2147296a7b396ec0c75e76bb3a2e6882c70eb15aa63324f1d6a5454`  
		Last Modified: Wed, 08 Feb 2017 21:46:00 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b846ea116088c2e14e5048550f7d8fac9f9f085d4a8d28fc0fda77f9e8bcb6`  
		Last Modified: Wed, 08 Feb 2017 21:45:59 GMT  
		Size: 2.1 KB (2134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3a0f39d5c98c9409eb144dec50e4e6e6f4131637e2e16762728e2edf1f23ef`  
		Last Modified: Wed, 08 Feb 2017 21:46:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:1078cb5a954492cab3daaa331cf5669d8eff2811b49a4d1db8ea47f06e056b64
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111026381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a498a2f1061c17783bd9690031548febc26fda17f009e04e13e6c1b908b44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:52:21 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 18:52:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 18:52:25 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jan 2017 18:53:40 GMT
ENV PERCONA_MAJOR=5.6
# Wed, 08 Feb 2017 21:44:02 GMT
ENV PERCONA_VERSION=5.6.35-80.0-1.jessie
# Wed, 08 Feb 2017 21:44:33 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 08 Feb 2017 21:44:34 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Wed, 08 Feb 2017 21:44:35 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 08 Feb 2017 21:44:36 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 08 Feb 2017 21:44:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Feb 2017 21:44:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 21:44:39 GMT
EXPOSE 3306/tcp
# Wed, 08 Feb 2017 21:44:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411e6fbe19a856d0c77595cea66f26da319518066a697c30d679a934928141c`  
		Last Modified: Wed, 18 Jan 2017 06:43:37 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d137990906d895c15dc563fca313108939f68a0b65aea80396281a8545685`  
		Last Modified: Wed, 18 Jan 2017 06:43:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fc2d4bed8a302628c5f81b8509f216a68ca3f68132eced98e429fb6ccee741`  
		Last Modified: Wed, 08 Feb 2017 21:46:14 GMT  
		Size: 52.0 MB (51969825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8fdf56f2147296a7b396ec0c75e76bb3a2e6882c70eb15aa63324f1d6a5454`  
		Last Modified: Wed, 08 Feb 2017 21:46:00 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b846ea116088c2e14e5048550f7d8fac9f9f085d4a8d28fc0fda77f9e8bcb6`  
		Last Modified: Wed, 08 Feb 2017 21:45:59 GMT  
		Size: 2.1 KB (2134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3a0f39d5c98c9409eb144dec50e4e6e6f4131637e2e16762728e2edf1f23ef`  
		Last Modified: Wed, 08 Feb 2017 21:46:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.54`

```console
$ docker pull percona@sha256:c46e9b95fb44336463acb1c815417eb4bec8f4b9fe3af65172d8340f9f709ab0
```

-	Platforms:
	-	linux; amd64

### `percona:5.5.54` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103448252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11498ea9aa39c25ce846e5ffee1aa0d6a0f1054cf51894be814e703315dc3262`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:52:21 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 18:52:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 18:52:25 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jan 2017 18:52:53 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 07 Feb 2017 20:32:38 GMT
ENV PERCONA_VERSION=5.5.54-rel38.6-2.jessie
# Tue, 07 Feb 2017 20:33:21 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 07 Feb 2017 20:33:22 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Tue, 07 Feb 2017 20:33:23 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 07 Feb 2017 20:33:24 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 07 Feb 2017 20:33:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 07 Feb 2017 20:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Feb 2017 20:33:26 GMT
EXPOSE 3306/tcp
# Tue, 07 Feb 2017 20:33:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411e6fbe19a856d0c77595cea66f26da319518066a697c30d679a934928141c`  
		Last Modified: Wed, 18 Jan 2017 06:43:37 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d137990906d895c15dc563fca313108939f68a0b65aea80396281a8545685`  
		Last Modified: Wed, 18 Jan 2017 06:43:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9ae8ec7cf41f0fed8563745a463745c17adb2a59374a4f2bf60e98fbe2eeae`  
		Last Modified: Tue, 07 Feb 2017 20:35:53 GMT  
		Size: 44.4 MB (44391694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b32f440b91df4b2fd835774af59ef4ea84a69be18b99caf6eac64332d2f158e`  
		Last Modified: Tue, 07 Feb 2017 20:35:41 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf7258637e798b9f6200a34ea9a9a6e48fb7cd0bd99c54c683d65e72cc5f55`  
		Last Modified: Tue, 07 Feb 2017 20:35:41 GMT  
		Size: 2.1 KB (2135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ffddafff124eca4974be2d339b69724b224f641f19568ad4f2084bf0009699`  
		Last Modified: Tue, 07 Feb 2017 20:35:41 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:c46e9b95fb44336463acb1c815417eb4bec8f4b9fe3af65172d8340f9f709ab0
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103448252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11498ea9aa39c25ce846e5ffee1aa0d6a0f1054cf51894be814e703315dc3262`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:52:21 GMT
ENV GPG_KEYS=430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 18:52:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/percona.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 18:52:25 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Tue, 17 Jan 2017 18:52:53 GMT
ENV PERCONA_MAJOR=5.5
# Tue, 07 Feb 2017 20:32:38 GMT
ENV PERCONA_VERSION=5.5.54-rel38.6-2.jessie
# Tue, 07 Feb 2017 20:33:21 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 07 Feb 2017 20:33:22 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Tue, 07 Feb 2017 20:33:23 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 07 Feb 2017 20:33:24 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 07 Feb 2017 20:33:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 07 Feb 2017 20:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Feb 2017 20:33:26 GMT
EXPOSE 3306/tcp
# Tue, 07 Feb 2017 20:33:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f411e6fbe19a856d0c77595cea66f26da319518066a697c30d679a934928141c`  
		Last Modified: Wed, 18 Jan 2017 06:43:37 GMT  
		Size: 4.7 KB (4669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d137990906d895c15dc563fca313108939f68a0b65aea80396281a8545685`  
		Last Modified: Wed, 18 Jan 2017 06:43:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9ae8ec7cf41f0fed8563745a463745c17adb2a59374a4f2bf60e98fbe2eeae`  
		Last Modified: Tue, 07 Feb 2017 20:35:53 GMT  
		Size: 44.4 MB (44391694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b32f440b91df4b2fd835774af59ef4ea84a69be18b99caf6eac64332d2f158e`  
		Last Modified: Tue, 07 Feb 2017 20:35:41 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf7258637e798b9f6200a34ea9a9a6e48fb7cd0bd99c54c683d65e72cc5f55`  
		Last Modified: Tue, 07 Feb 2017 20:35:41 GMT  
		Size: 2.1 KB (2135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ffddafff124eca4974be2d339b69724b224f641f19568ad4f2084bf0009699`  
		Last Modified: Tue, 07 Feb 2017 20:35:41 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
