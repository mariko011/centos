<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `percona`

-	[`percona:5.7.14`](#percona5714)
-	[`percona:5.7`](#percona57)
-	[`percona:5`](#percona5)
-	[`percona:latest`](#perconalatest)
-	[`percona:5.6.32`](#percona5632)
-	[`percona:5.6`](#percona56)
-	[`percona:5.5.51`](#percona5551)
-	[`percona:5.5`](#percona55)

## `percona:5.7.14`

```console
$ docker pull percona@sha256:a57659e25bff6cb5431a34a6afb9cd16e07472f4ec1e6e5a953be58db7077100
```

-	Platforms:
	-	linux; amd64

### `percona:5.7.14` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119422451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84e737203dd12f89cc0e7f6c99bae09fa4c094a4b92249be729840e4b32cfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:09:42 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 24 Aug 2016 17:08:46 GMT
ENV PERCONA_VERSION=5.7.14-7-1.jessie
# Wed, 24 Aug 2016 17:10:17 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Aug 2016 17:10:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 24 Aug 2016 17:10:21 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 24 Aug 2016 17:10:23 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/
# Wed, 24 Aug 2016 17:10:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 24 Aug 2016 17:10:27 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Wed, 24 Aug 2016 17:10:29 GMT
EXPOSE 3306/tcp
# Wed, 24 Aug 2016 17:10:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04966a3b56540feac677901c2ab66dfc34ccf8508ec39e18ac2bd03404f9af8`  
		Last Modified: Wed, 24 Aug 2016 17:10:59 GMT  
		Size: 60.4 MB (60369680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b4708a792ce048613ae06f41a0e21fe3caa3166fd3aa7194dfdfa07410c9b`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fcccf3ff6413dbadaa0cd1981f15932a4a9d12961ff40b9ba601ed00e91260`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45da1975c132447ba8c84f5d8db2f7cec7818ecd6614b1d45f3a0fc195fd7693`  
		Last Modified: Wed, 24 Aug 2016 17:10:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:a57659e25bff6cb5431a34a6afb9cd16e07472f4ec1e6e5a953be58db7077100
```

-	Platforms:
	-	linux; amd64

### `percona:5.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119422451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84e737203dd12f89cc0e7f6c99bae09fa4c094a4b92249be729840e4b32cfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:09:42 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 24 Aug 2016 17:08:46 GMT
ENV PERCONA_VERSION=5.7.14-7-1.jessie
# Wed, 24 Aug 2016 17:10:17 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Aug 2016 17:10:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 24 Aug 2016 17:10:21 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 24 Aug 2016 17:10:23 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/
# Wed, 24 Aug 2016 17:10:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 24 Aug 2016 17:10:27 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Wed, 24 Aug 2016 17:10:29 GMT
EXPOSE 3306/tcp
# Wed, 24 Aug 2016 17:10:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04966a3b56540feac677901c2ab66dfc34ccf8508ec39e18ac2bd03404f9af8`  
		Last Modified: Wed, 24 Aug 2016 17:10:59 GMT  
		Size: 60.4 MB (60369680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b4708a792ce048613ae06f41a0e21fe3caa3166fd3aa7194dfdfa07410c9b`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fcccf3ff6413dbadaa0cd1981f15932a4a9d12961ff40b9ba601ed00e91260`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45da1975c132447ba8c84f5d8db2f7cec7818ecd6614b1d45f3a0fc195fd7693`  
		Last Modified: Wed, 24 Aug 2016 17:10:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5`

```console
$ docker pull percona@sha256:a57659e25bff6cb5431a34a6afb9cd16e07472f4ec1e6e5a953be58db7077100
```

-	Platforms:
	-	linux; amd64

### `percona:5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119422451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84e737203dd12f89cc0e7f6c99bae09fa4c094a4b92249be729840e4b32cfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:09:42 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 24 Aug 2016 17:08:46 GMT
ENV PERCONA_VERSION=5.7.14-7-1.jessie
# Wed, 24 Aug 2016 17:10:17 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Aug 2016 17:10:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 24 Aug 2016 17:10:21 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 24 Aug 2016 17:10:23 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/
# Wed, 24 Aug 2016 17:10:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 24 Aug 2016 17:10:27 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Wed, 24 Aug 2016 17:10:29 GMT
EXPOSE 3306/tcp
# Wed, 24 Aug 2016 17:10:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04966a3b56540feac677901c2ab66dfc34ccf8508ec39e18ac2bd03404f9af8`  
		Last Modified: Wed, 24 Aug 2016 17:10:59 GMT  
		Size: 60.4 MB (60369680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b4708a792ce048613ae06f41a0e21fe3caa3166fd3aa7194dfdfa07410c9b`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fcccf3ff6413dbadaa0cd1981f15932a4a9d12961ff40b9ba601ed00e91260`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45da1975c132447ba8c84f5d8db2f7cec7818ecd6614b1d45f3a0fc195fd7693`  
		Last Modified: Wed, 24 Aug 2016 17:10:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:a57659e25bff6cb5431a34a6afb9cd16e07472f4ec1e6e5a953be58db7077100
```

-	Platforms:
	-	linux; amd64

### `percona:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119422451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84e737203dd12f89cc0e7f6c99bae09fa4c094a4b92249be729840e4b32cfde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:09:42 GMT
ENV PERCONA_MAJOR=5.7
# Wed, 24 Aug 2016 17:08:46 GMT
ENV PERCONA_VERSION=5.7.14-7-1.jessie
# Wed, 24 Aug 2016 17:10:17 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Aug 2016 17:10:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 24 Aug 2016 17:10:21 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 24 Aug 2016 17:10:23 GMT
COPY file:ad180869b1d1a83532826381678c3a7c2421554c16865c545cdc737cc5f2c8d9 in /usr/local/bin/
# Wed, 24 Aug 2016 17:10:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 24 Aug 2016 17:10:27 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Wed, 24 Aug 2016 17:10:29 GMT
EXPOSE 3306/tcp
# Wed, 24 Aug 2016 17:10:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04966a3b56540feac677901c2ab66dfc34ccf8508ec39e18ac2bd03404f9af8`  
		Last Modified: Wed, 24 Aug 2016 17:10:59 GMT  
		Size: 60.4 MB (60369680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4b4708a792ce048613ae06f41a0e21fe3caa3166fd3aa7194dfdfa07410c9b`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fcccf3ff6413dbadaa0cd1981f15932a4a9d12961ff40b9ba601ed00e91260`  
		Last Modified: Wed, 24 Aug 2016 17:10:42 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45da1975c132447ba8c84f5d8db2f7cec7818ecd6614b1d45f3a0fc195fd7693`  
		Last Modified: Wed, 24 Aug 2016 17:10:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.32`

```console
$ docker pull percona@sha256:e70c75bfa333080dc5a4675c850065f5f3710d7704fde44d245cb1dc9abc1352
```

-	Platforms:
	-	linux; amd64

### `percona:5.6.32` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110667466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b949746f4cba1f131893f836071315c44c21700f49255a753e8d1ef76abb8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:12:26 GMT
ENV PERCONA_MAJOR=5.6
# Mon, 22 Aug 2016 19:22:24 GMT
ENV PERCONA_VERSION=5.6.32-78.0-1.jessie
# Mon, 22 Aug 2016 19:24:02 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 22 Aug 2016 19:24:05 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 22 Aug 2016 19:24:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 22 Aug 2016 19:24:08 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/
# Mon, 22 Aug 2016 19:24:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 19:24:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:24:13 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:24:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77a47e75c51c3283f3c293cea0ed681974b10b93362df9848be99fb4c4c480e`  
		Last Modified: Mon, 22 Aug 2016 19:27:35 GMT  
		Size: 51.6 MB (51614695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc418955bf8d49fcbce778c9e34915ddf590357961f3d30365d8da40bb72b5e6`  
		Last Modified: Mon, 22 Aug 2016 19:27:19 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32258bdb6d09e75ff535e62c8b4793cb4f8f58846901246eb5a96630f77c274`  
		Last Modified: Mon, 22 Aug 2016 19:27:19 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae64131596130373c2868754e5c3b1ea449b58dc6ecec84563a126d69215f2c1`  
		Last Modified: Mon, 22 Aug 2016 19:27:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:e70c75bfa333080dc5a4675c850065f5f3710d7704fde44d245cb1dc9abc1352
```

-	Platforms:
	-	linux; amd64

### `percona:5.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110667466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b949746f4cba1f131893f836071315c44c21700f49255a753e8d1ef76abb8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:12:26 GMT
ENV PERCONA_MAJOR=5.6
# Mon, 22 Aug 2016 19:22:24 GMT
ENV PERCONA_VERSION=5.6.32-78.0-1.jessie
# Mon, 22 Aug 2016 19:24:02 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 22 Aug 2016 19:24:05 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 22 Aug 2016 19:24:06 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 22 Aug 2016 19:24:08 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/
# Mon, 22 Aug 2016 19:24:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 19:24:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:24:13 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:24:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77a47e75c51c3283f3c293cea0ed681974b10b93362df9848be99fb4c4c480e`  
		Last Modified: Mon, 22 Aug 2016 19:27:35 GMT  
		Size: 51.6 MB (51614695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc418955bf8d49fcbce778c9e34915ddf590357961f3d30365d8da40bb72b5e6`  
		Last Modified: Mon, 22 Aug 2016 19:27:19 GMT  
		Size: 1.9 KB (1889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32258bdb6d09e75ff535e62c8b4793cb4f8f58846901246eb5a96630f77c274`  
		Last Modified: Mon, 22 Aug 2016 19:27:19 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae64131596130373c2868754e5c3b1ea449b58dc6ecec84563a126d69215f2c1`  
		Last Modified: Mon, 22 Aug 2016 19:27:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5.51`

```console
$ docker pull percona@sha256:6007959af8bf4aa53c03d38ba5550dbb485d75b344ea3960bd25ef06b2c8ba2f
```

-	Platforms:
	-	linux; amd64

### `percona:5.5.51` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103446778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e01cc1d7efe8d718502537c7a27f7849ddaf1252b88efa6875ac846354aae49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:07:01 GMT
ENV PERCONA_MAJOR=5.5
# Mon, 22 Aug 2016 19:24:15 GMT
ENV PERCONA_VERSION=5.5.51-rel38.1-1.jessie
# Mon, 22 Aug 2016 19:26:08 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 22 Aug 2016 19:26:10 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 22 Aug 2016 19:26:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 22 Aug 2016 19:26:13 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/
# Mon, 22 Aug 2016 19:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 19:26:17 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:26:18 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:26:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fef5bb3677ff4209fbee64b7a616803ebafd6acccb7a26265f7ddb52ab58f3`  
		Last Modified: Mon, 22 Aug 2016 19:28:20 GMT  
		Size: 44.4 MB (44394008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4737ba5153c02ce1b6743cdcd775a86811ecbf451e64f92b84c7b3169df23f37`  
		Last Modified: Mon, 22 Aug 2016 19:28:08 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c011f65120c79997802f45d64084275ec7160742eca439451f2219c93a22e74`  
		Last Modified: Mon, 22 Aug 2016 19:28:09 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0998c3f6dcb6aca84a820c4191057d8d86ed171d2c6293fb0c33b709a6749f`  
		Last Modified: Mon, 22 Aug 2016 19:28:08 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.5`

```console
$ docker pull percona@sha256:6007959af8bf4aa53c03d38ba5550dbb485d75b344ea3960bd25ef06b2c8ba2f
```

-	Platforms:
	-	linux; amd64

### `percona:5.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103446778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e01cc1d7efe8d718502537c7a27f7849ddaf1252b88efa6875ac846354aae49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:31:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 29 Jul 2016 19:31:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:32:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jul 2016 19:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 20:06:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 01 Aug 2016 20:07:01 GMT
RUN echo 'deb https://repo.percona.com/apt jessie main' > /etc/apt/sources.list.d/percona.list
# Mon, 01 Aug 2016 20:07:01 GMT
ENV PERCONA_MAJOR=5.5
# Mon, 22 Aug 2016 19:24:15 GMT
ENV PERCONA_VERSION=5.5.51-rel38.1-1.jessie
# Mon, 22 Aug 2016 19:26:08 GMT
RUN { 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password password 'unused'; 		echo percona-server-server-$PERCONA_MAJOR percona-server-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		percona-server-server-$PERCONA_MAJOR=$PERCONA_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 22 Aug 2016 19:26:10 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 22 Aug 2016 19:26:12 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Mon, 22 Aug 2016 19:26:13 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/
# Mon, 22 Aug 2016 19:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 22 Aug 2016 19:26:17 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:26:18 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:26:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256a92f57ae8b3b993d4378161fc01c2cf6ce79bcdb40e28d709047d4ad4e984`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ee0325fe9179b6df96846b3f1e085c60a34af99c248b2dfccbe37b11fecb7e`  
		Last Modified: Fri, 29 Jul 2016 19:36:32 GMT  
		Size: 1.2 MB (1216540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15deb03758bdc9dabfea84d10f49d05850a117ea3880b9656d8962352aa61bc`  
		Last Modified: Fri, 29 Jul 2016 19:36:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d6cba29d2d6081c6b36b2f3d8b1e9055ce6f55dd355e5367daecaf06eb67e`  
		Last Modified: Fri, 29 Jul 2016 19:36:31 GMT  
		Size: 6.5 MB (6463146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c06732aad0780a4f02b516c230f96655aa4d38a703c2f243ce3690c0c1b0a`  
		Last Modified: Mon, 01 Aug 2016 20:09:15 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a53c3f0fa092eb28dc7668e7f3f687f747ca8cac2746a4d565abf086ed05cc5`  
		Last Modified: Mon, 01 Aug 2016 20:09:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fef5bb3677ff4209fbee64b7a616803ebafd6acccb7a26265f7ddb52ab58f3`  
		Last Modified: Mon, 22 Aug 2016 19:28:20 GMT  
		Size: 44.4 MB (44394008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4737ba5153c02ce1b6743cdcd775a86811ecbf451e64f92b84c7b3169df23f37`  
		Last Modified: Mon, 22 Aug 2016 19:28:08 GMT  
		Size: 1.9 KB (1890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c011f65120c79997802f45d64084275ec7160742eca439451f2219c93a22e74`  
		Last Modified: Mon, 22 Aug 2016 19:28:09 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0998c3f6dcb6aca84a820c4191057d8d86ed171d2c6293fb0c33b709a6749f`  
		Last Modified: Mon, 22 Aug 2016 19:28:08 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
