<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5.7.15`](#percona5715)
-	[`percona:5.7`](#percona57)
-	[`percona:5`](#percona5)
-	[`percona:latest`](#perconalatest)
-	[`percona:5.6.33`](#percona5633)
-	[`percona:5.6`](#percona56)
-	[`percona:5.5.52`](#percona5552)
-	[`percona:5.5`](#percona55)

## `percona:5.7.15`

```console
$ docker pull percona@sha256:2d57886e40e140fbb635e2d858811b17a345a8e763c27f7165341137bb634727
```

-	Platforms:
	-	linux; amd64

### `percona:5.7.15` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119857514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf942f35dfc826c98c035606e0f82b17be709844a02df1fbcc5fb67c1c75b244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:56:51 GMT
ENV PERCONA_MAJOR=5.7
# Mon, 31 Oct 2016 22:23:41 GMT
ENV PERCONA_VERSION=5.7.15-9-1.jessie
# Mon, 31 Oct 2016 22:24:03 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Oct 2016 22:24:04 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Mon, 31 Oct 2016 22:24:04 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Oct 2016 22:24:05 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:24:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Oct 2016 22:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:24:07 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:24:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c3c752950809a388a9a8ff03676f3515579671e560b0091c8d48e02b7f66bd`  
		Last Modified: Mon, 31 Oct 2016 22:24:46 GMT  
		Size: 60.8 MB (60814279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986918f81600992a482a6ac60dc06f42022d23176764eb3c15b2278ce1dd9d2c`  
		Last Modified: Mon, 31 Oct 2016 22:24:28 GMT  
		Size: 788.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b84d7738411d17c6f9c4e57f371927e96f50343c9970c914a8d8bab84014ee8`  
		Last Modified: Mon, 31 Oct 2016 22:24:27 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa1a202261453e107a0d0584919246fd7be9d157877dca997ec70ef795f26c8`  
		Last Modified: Mon, 31 Oct 2016 22:24:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:2d57886e40e140fbb635e2d858811b17a345a8e763c27f7165341137bb634727
```

-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119857514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf942f35dfc826c98c035606e0f82b17be709844a02df1fbcc5fb67c1c75b244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:56:51 GMT
ENV PERCONA_MAJOR=5.7
# Mon, 31 Oct 2016 22:23:41 GMT
ENV PERCONA_VERSION=5.7.15-9-1.jessie
# Mon, 31 Oct 2016 22:24:03 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Oct 2016 22:24:04 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Mon, 31 Oct 2016 22:24:04 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Oct 2016 22:24:05 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:24:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Oct 2016 22:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:24:07 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:24:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c3c752950809a388a9a8ff03676f3515579671e560b0091c8d48e02b7f66bd`  
		Last Modified: Mon, 31 Oct 2016 22:24:46 GMT  
		Size: 60.8 MB (60814279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986918f81600992a482a6ac60dc06f42022d23176764eb3c15b2278ce1dd9d2c`  
		Last Modified: Mon, 31 Oct 2016 22:24:28 GMT  
		Size: 788.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b84d7738411d17c6f9c4e57f371927e96f50343c9970c914a8d8bab84014ee8`  
		Last Modified: Mon, 31 Oct 2016 22:24:27 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa1a202261453e107a0d0584919246fd7be9d157877dca997ec70ef795f26c8`  
		Last Modified: Mon, 31 Oct 2016 22:24:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5`

```console
$ docker pull percona@sha256:2d57886e40e140fbb635e2d858811b17a345a8e763c27f7165341137bb634727
```

-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119857514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf942f35dfc826c98c035606e0f82b17be709844a02df1fbcc5fb67c1c75b244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:56:51 GMT
ENV PERCONA_MAJOR=5.7
# Mon, 31 Oct 2016 22:23:41 GMT
ENV PERCONA_VERSION=5.7.15-9-1.jessie
# Mon, 31 Oct 2016 22:24:03 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Oct 2016 22:24:04 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Mon, 31 Oct 2016 22:24:04 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Oct 2016 22:24:05 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:24:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Oct 2016 22:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:24:07 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:24:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c3c752950809a388a9a8ff03676f3515579671e560b0091c8d48e02b7f66bd`  
		Last Modified: Mon, 31 Oct 2016 22:24:46 GMT  
		Size: 60.8 MB (60814279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986918f81600992a482a6ac60dc06f42022d23176764eb3c15b2278ce1dd9d2c`  
		Last Modified: Mon, 31 Oct 2016 22:24:28 GMT  
		Size: 788.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b84d7738411d17c6f9c4e57f371927e96f50343c9970c914a8d8bab84014ee8`  
		Last Modified: Mon, 31 Oct 2016 22:24:27 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa1a202261453e107a0d0584919246fd7be9d157877dca997ec70ef795f26c8`  
		Last Modified: Mon, 31 Oct 2016 22:24:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:2d57886e40e140fbb635e2d858811b17a345a8e763c27f7165341137bb634727
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119857514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf942f35dfc826c98c035606e0f82b17be709844a02df1fbcc5fb67c1c75b244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:56:51 GMT
ENV PERCONA_MAJOR=5.7
# Mon, 31 Oct 2016 22:23:41 GMT
ENV PERCONA_VERSION=5.7.15-9-1.jessie
# Mon, 31 Oct 2016 22:24:03 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Oct 2016 22:24:04 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Mon, 31 Oct 2016 22:24:04 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Oct 2016 22:24:05 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:24:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Oct 2016 22:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:24:07 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:24:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c3c752950809a388a9a8ff03676f3515579671e560b0091c8d48e02b7f66bd`  
		Last Modified: Mon, 31 Oct 2016 22:24:46 GMT  
		Size: 60.8 MB (60814279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986918f81600992a482a6ac60dc06f42022d23176764eb3c15b2278ce1dd9d2c`  
		Last Modified: Mon, 31 Oct 2016 22:24:28 GMT  
		Size: 788.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b84d7738411d17c6f9c4e57f371927e96f50343c9970c914a8d8bab84014ee8`  
		Last Modified: Mon, 31 Oct 2016 22:24:27 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa1a202261453e107a0d0584919246fd7be9d157877dca997ec70ef795f26c8`  
		Last Modified: Mon, 31 Oct 2016 22:24:27 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.33`

```console
$ docker pull percona@sha256:3908bb9544d56c5faea6a0a111e36291d39dcb87bdf03b026cdc1ab1c458f4ab
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.33` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110691029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91df2c08e4f7055cf44c5b6f2b79b1ad84e99178bfc5b0a51cd6d6245d665b4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:59:46 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 21 Oct 2016 22:59:47 GMT
ENV PERCONA_VERSION=5.6.33-79.0-1.jessie
# Fri, 21 Oct 2016 23:00:16 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 23:00:17 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 21 Oct 2016 23:00:17 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Fri, 21 Oct 2016 23:00:18 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Fri, 21 Oct 2016 23:00:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Oct 2016 23:00:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Oct 2016 23:00:21 GMT
EXPOSE 3306/tcp
# Fri, 21 Oct 2016 23:00:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d895a1ec859a68a3b7e3402e15f7995759ad675b9eb199689f3aa5e4aa72fad1`  
		Last Modified: Fri, 21 Oct 2016 23:00:46 GMT  
		Size: 51.6 MB (51646697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cac5edede92ad293efb53a171012eb11c91bbced0e71509738af45fe6409f6`  
		Last Modified: Fri, 21 Oct 2016 23:00:30 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8943b58c29b31658eb45324d46fe47fd382329ff1bb9244b05ad00f4a7dde688`  
		Last Modified: Fri, 21 Oct 2016 23:00:31 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b256bd8d82273dfcf3a0eb8301eaa8bc17e192d1ca1ff587594b2a83758f9369`  
		Last Modified: Fri, 21 Oct 2016 23:00:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:bf650416636d095cdbc9e02ca45baaec0259f1a4f788dcef1529627d47d8a9c0
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110691029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb4f3e7a6a9cc2345a98b93a38389ef68219e4aeb4cbd352c126b15462fe07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:59:46 GMT
ENV PERCONA_MAJOR=5.6
# Fri, 21 Oct 2016 22:59:47 GMT
ENV PERCONA_VERSION=5.6.33-79.0-1.jessie
# Fri, 21 Oct 2016 23:00:16 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Oct 2016 22:24:09 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Mon, 31 Oct 2016 22:24:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Oct 2016 22:24:10 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:24:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Oct 2016 22:24:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:24:12 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:24:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d895a1ec859a68a3b7e3402e15f7995759ad675b9eb199689f3aa5e4aa72fad1`  
		Last Modified: Fri, 21 Oct 2016 23:00:46 GMT  
		Size: 51.6 MB (51646697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096bf9c2d62b4e51f25100771326d2ef92d5cde96651d79bff13e05d85f0cf16`  
		Last Modified: Mon, 31 Oct 2016 22:25:37 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab5f62322f8b46e54b8dc4653a5a22327cdcb771ca2c04d8821226dd86f4077`  
		Last Modified: Mon, 31 Oct 2016 22:25:37 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd55954832b23a6a670600a2cbbc92d2d14dbe95a2e03a94864fd767aeee6662`  
		Last Modified: Mon, 31 Oct 2016 22:25:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.52`

```console
$ docker pull percona@sha256:62cedfda48050e94cf181c2a0fc8cde0e45f217de47abd02400f81a6064a7309
```

-	Platforms:
	-	linux; amd64

### `percona:5.5.52` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103443645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a087422cdaad7c659d5943a4266eef9b90c92ba4e0b6a0108b6ed0ebbaf935e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:58:13 GMT
ENV PERCONA_MAJOR=5.5
# Fri, 21 Oct 2016 22:58:14 GMT
ENV PERCONA_VERSION=5.5.52-rel38.3-1.jessie
# Fri, 21 Oct 2016 22:58:59 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Oct 2016 22:24:13 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Mon, 31 Oct 2016 22:24:14 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Oct 2016 22:24:14 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:24:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Oct 2016 22:24:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:24:16 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:24:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122cd4d5b268a202b4be476ce4319c65db6c36dfe507962ffe5f6ca5f885baf6`  
		Last Modified: Fri, 21 Oct 2016 22:59:28 GMT  
		Size: 44.4 MB (44399317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bcbc0d67f9ab1255ea5c0a44036c0bfd905112bb78319523338e48ae568056`  
		Last Modified: Mon, 31 Oct 2016 22:26:07 GMT  
		Size: 1.9 KB (1888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e971be8c14c11b2837d9eae02b7e7611cf1ca04da69b2522b5791691a76f5b`  
		Last Modified: Mon, 31 Oct 2016 22:26:08 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5f149eb4242e28f90eaf2cab72ee022be1f19c16f04afacfa46f43d25c81b2`  
		Last Modified: Mon, 31 Oct 2016 22:26:06 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:62cedfda48050e94cf181c2a0fc8cde0e45f217de47abd02400f81a6064a7309
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103443645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a087422cdaad7c659d5943a4266eef9b90c92ba4e0b6a0108b6ed0ebbaf935e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:34:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 21 Oct 2016 20:34:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:34:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:34:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 20:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:56:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 21 Oct 2016 22:56:51 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Fri, 21 Oct 2016 22:58:13 GMT
ENV PERCONA_MAJOR=5.5
# Fri, 21 Oct 2016 22:58:14 GMT
ENV PERCONA_VERSION=5.5.52-rel38.3-1.jessie
# Fri, 21 Oct 2016 22:58:59 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 31 Oct 2016 22:24:13 GMT
RUN find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& myCnf="$(find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lE '^\[mysqld\]' 		| head -n1)" 	&& echo 'skip-host-cache\nskip-name-resolve' 		| awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' "$myCnf" > /tmp/my.cnf 	&& mv /tmp/my.cnf "$myCnf"
# Mon, 31 Oct 2016 22:24:14 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 31 Oct 2016 22:24:14 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:24:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Oct 2016 22:24:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:24:16 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:24:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd54d3b3438705a2d02c76aff4cbf186fc6f84cc140813d2960a30052eea6`  
		Last Modified: Fri, 21 Oct 2016 20:35:38 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b527830a1b1ed8ed5b158efece60743efb2f94c096cfcaa030f625ee56bad3`  
		Last Modified: Fri, 21 Oct 2016 20:35:40 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44839710d611bd846d318e51f236e2e433602dfe95a6df501136afbfd182a9f1`  
		Last Modified: Fri, 21 Oct 2016 20:35:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f0741bea2603cc1a89fbccd4746e66fa299906a78359209f037fb0fb0bf8fe`  
		Last Modified: Fri, 21 Oct 2016 20:35:39 GMT  
		Size: 6.5 MB (6463967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5eab8c325ad0039f9fa23fe930585af798720147d4d5db7a62f97fb15a0bdb`  
		Last Modified: Fri, 21 Oct 2016 22:59:16 GMT  
		Size: 4.7 KB (4717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a51676e1ec41e20aab1ddd94c6c612d2fe9adf579ff3d60dc0b4c8987bf0c77`  
		Last Modified: Fri, 21 Oct 2016 22:59:15 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122cd4d5b268a202b4be476ce4319c65db6c36dfe507962ffe5f6ca5f885baf6`  
		Last Modified: Fri, 21 Oct 2016 22:59:28 GMT  
		Size: 44.4 MB (44399317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bcbc0d67f9ab1255ea5c0a44036c0bfd905112bb78319523338e48ae568056`  
		Last Modified: Mon, 31 Oct 2016 22:26:07 GMT  
		Size: 1.9 KB (1888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e971be8c14c11b2837d9eae02b7e7611cf1ca04da69b2522b5791691a76f5b`  
		Last Modified: Mon, 31 Oct 2016 22:26:08 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5f149eb4242e28f90eaf2cab72ee022be1f19c16f04afacfa46f43d25c81b2`  
		Last Modified: Mon, 31 Oct 2016 22:26:06 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
