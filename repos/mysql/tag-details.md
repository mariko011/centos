<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5.7.15`](#mysql5715)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.33`](#mysql5633)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.52`](#mysql5552)
-	[`mysql:5.5`](#mysql55)

## `mysql:5.7.15`

```console
$ docker pull mysql@sha256:3b8f0115bdef1741a9d862ec327cdf9596aab131efc84fda647cf085c808ffae
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.15` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131660997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dc0600619272d4049e001231ab2eac80449c6e9fbbc010f00b30b08d295519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:06:16 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:06:19 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 31 Aug 2016 00:06:19 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 07 Sep 2016 18:18:46 GMT
ENV MYSQL_VERSION=5.7.15-1debian8
# Wed, 07 Sep 2016 18:18:46 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 07 Sep 2016 18:19:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 07 Sep 2016 18:19:07 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Wed, 07 Sep 2016 18:19:07 GMT
VOLUME [/var/lib/mysql]
# Wed, 07 Sep 2016 18:19:07 GMT
COPY file:ad172e06f0272aa49d8a0aca6c18ab1615d6d3beee72933134c1ac600cddeb94 in /usr/local/bin/ 
# Wed, 07 Sep 2016 18:19:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Sep 2016 18:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Sep 2016 18:19:09 GMT
EXPOSE 3306/tcp
# Wed, 07 Sep 2016 18:19:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a6e2414f0abd873b8ad90ff4be0b715f00a68bc51aeea87b5d0306c2721d3d`  
		Last Modified: Wed, 07 Sep 2016 18:20:31 GMT  
		Size: 8.2 MB (8248313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62605666ff10bc4f41959f65029edba6a4f34eb01131969c39e179b1dc9f34d6`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e576d6e4141f3a58a3352e5d7594ed536a21d3bbb5e15da94e768bb5309f13`  
		Last Modified: Wed, 07 Sep 2016 18:20:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15b3da65ebeda78b9701b540a9a5de753e4be51c21ac11fc1b24e5faa1d4322`  
		Last Modified: Wed, 07 Sep 2016 18:20:43 GMT  
		Size: 70.8 MB (70804653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f98892a5e07c2a4c26a471c3575752dc80deb176b63673ee990e664c0428d5b`  
		Last Modified: Wed, 07 Sep 2016 18:20:23 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd36255110d21291ff6250705f1d2b1e36b5c4b52e203c76a74b9cbccc3d416d`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064f0c64010bf6167b2ecd15c7333a4f0449be2b5e3840b192b4b4eb94129247`  
		Last Modified: Wed, 07 Sep 2016 18:20:24 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:3b8f0115bdef1741a9d862ec327cdf9596aab131efc84fda647cf085c808ffae
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131660997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dc0600619272d4049e001231ab2eac80449c6e9fbbc010f00b30b08d295519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:06:16 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:06:19 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 31 Aug 2016 00:06:19 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 07 Sep 2016 18:18:46 GMT
ENV MYSQL_VERSION=5.7.15-1debian8
# Wed, 07 Sep 2016 18:18:46 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 07 Sep 2016 18:19:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 07 Sep 2016 18:19:07 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Wed, 07 Sep 2016 18:19:07 GMT
VOLUME [/var/lib/mysql]
# Wed, 07 Sep 2016 18:19:07 GMT
COPY file:ad172e06f0272aa49d8a0aca6c18ab1615d6d3beee72933134c1ac600cddeb94 in /usr/local/bin/ 
# Wed, 07 Sep 2016 18:19:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Sep 2016 18:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Sep 2016 18:19:09 GMT
EXPOSE 3306/tcp
# Wed, 07 Sep 2016 18:19:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a6e2414f0abd873b8ad90ff4be0b715f00a68bc51aeea87b5d0306c2721d3d`  
		Last Modified: Wed, 07 Sep 2016 18:20:31 GMT  
		Size: 8.2 MB (8248313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62605666ff10bc4f41959f65029edba6a4f34eb01131969c39e179b1dc9f34d6`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e576d6e4141f3a58a3352e5d7594ed536a21d3bbb5e15da94e768bb5309f13`  
		Last Modified: Wed, 07 Sep 2016 18:20:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15b3da65ebeda78b9701b540a9a5de753e4be51c21ac11fc1b24e5faa1d4322`  
		Last Modified: Wed, 07 Sep 2016 18:20:43 GMT  
		Size: 70.8 MB (70804653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f98892a5e07c2a4c26a471c3575752dc80deb176b63673ee990e664c0428d5b`  
		Last Modified: Wed, 07 Sep 2016 18:20:23 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd36255110d21291ff6250705f1d2b1e36b5c4b52e203c76a74b9cbccc3d416d`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064f0c64010bf6167b2ecd15c7333a4f0449be2b5e3840b192b4b4eb94129247`  
		Last Modified: Wed, 07 Sep 2016 18:20:24 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:3b8f0115bdef1741a9d862ec327cdf9596aab131efc84fda647cf085c808ffae
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131660997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dc0600619272d4049e001231ab2eac80449c6e9fbbc010f00b30b08d295519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:06:16 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:06:19 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 31 Aug 2016 00:06:19 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 07 Sep 2016 18:18:46 GMT
ENV MYSQL_VERSION=5.7.15-1debian8
# Wed, 07 Sep 2016 18:18:46 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 07 Sep 2016 18:19:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 07 Sep 2016 18:19:07 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Wed, 07 Sep 2016 18:19:07 GMT
VOLUME [/var/lib/mysql]
# Wed, 07 Sep 2016 18:19:07 GMT
COPY file:ad172e06f0272aa49d8a0aca6c18ab1615d6d3beee72933134c1ac600cddeb94 in /usr/local/bin/ 
# Wed, 07 Sep 2016 18:19:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Sep 2016 18:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Sep 2016 18:19:09 GMT
EXPOSE 3306/tcp
# Wed, 07 Sep 2016 18:19:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a6e2414f0abd873b8ad90ff4be0b715f00a68bc51aeea87b5d0306c2721d3d`  
		Last Modified: Wed, 07 Sep 2016 18:20:31 GMT  
		Size: 8.2 MB (8248313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62605666ff10bc4f41959f65029edba6a4f34eb01131969c39e179b1dc9f34d6`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e576d6e4141f3a58a3352e5d7594ed536a21d3bbb5e15da94e768bb5309f13`  
		Last Modified: Wed, 07 Sep 2016 18:20:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15b3da65ebeda78b9701b540a9a5de753e4be51c21ac11fc1b24e5faa1d4322`  
		Last Modified: Wed, 07 Sep 2016 18:20:43 GMT  
		Size: 70.8 MB (70804653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f98892a5e07c2a4c26a471c3575752dc80deb176b63673ee990e664c0428d5b`  
		Last Modified: Wed, 07 Sep 2016 18:20:23 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd36255110d21291ff6250705f1d2b1e36b5c4b52e203c76a74b9cbccc3d416d`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064f0c64010bf6167b2ecd15c7333a4f0449be2b5e3840b192b4b4eb94129247`  
		Last Modified: Wed, 07 Sep 2016 18:20:24 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:3b8f0115bdef1741a9d862ec327cdf9596aab131efc84fda647cf085c808ffae
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131660997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dc0600619272d4049e001231ab2eac80449c6e9fbbc010f00b30b08d295519`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:06:16 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:06:19 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 31 Aug 2016 00:06:19 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 07 Sep 2016 18:18:46 GMT
ENV MYSQL_VERSION=5.7.15-1debian8
# Wed, 07 Sep 2016 18:18:46 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 07 Sep 2016 18:19:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 07 Sep 2016 18:19:07 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Wed, 07 Sep 2016 18:19:07 GMT
VOLUME [/var/lib/mysql]
# Wed, 07 Sep 2016 18:19:07 GMT
COPY file:ad172e06f0272aa49d8a0aca6c18ab1615d6d3beee72933134c1ac600cddeb94 in /usr/local/bin/ 
# Wed, 07 Sep 2016 18:19:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Sep 2016 18:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Sep 2016 18:19:09 GMT
EXPOSE 3306/tcp
# Wed, 07 Sep 2016 18:19:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a6e2414f0abd873b8ad90ff4be0b715f00a68bc51aeea87b5d0306c2721d3d`  
		Last Modified: Wed, 07 Sep 2016 18:20:31 GMT  
		Size: 8.2 MB (8248313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62605666ff10bc4f41959f65029edba6a4f34eb01131969c39e179b1dc9f34d6`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e576d6e4141f3a58a3352e5d7594ed536a21d3bbb5e15da94e768bb5309f13`  
		Last Modified: Wed, 07 Sep 2016 18:20:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15b3da65ebeda78b9701b540a9a5de753e4be51c21ac11fc1b24e5faa1d4322`  
		Last Modified: Wed, 07 Sep 2016 18:20:43 GMT  
		Size: 70.8 MB (70804653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f98892a5e07c2a4c26a471c3575752dc80deb176b63673ee990e664c0428d5b`  
		Last Modified: Wed, 07 Sep 2016 18:20:23 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd36255110d21291ff6250705f1d2b1e36b5c4b52e203c76a74b9cbccc3d416d`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064f0c64010bf6167b2ecd15c7333a4f0449be2b5e3840b192b4b4eb94129247`  
		Last Modified: Wed, 07 Sep 2016 18:20:24 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.33`

```console
$ docker pull mysql@sha256:31ad2efd094a1336ef1f8efaf40b88a5019778e7d9b8a8579a4f95a6be88eaba
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.33` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112573015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72bb9d97fb75c6ee7d8175ff90d20a1098bc3cfb6cbca4f1132af490e8f8107b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:06:16 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:06:19 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 31 Aug 2016 00:07:03 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 07 Sep 2016 18:19:10 GMT
ENV MYSQL_VERSION=5.6.33-1debian8
# Wed, 07 Sep 2016 18:19:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 07 Sep 2016 18:19:29 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 07 Sep 2016 18:19:30 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 07 Sep 2016 18:19:30 GMT
VOLUME [/var/lib/mysql]
# Wed, 07 Sep 2016 18:19:30 GMT
COPY file:ea7ad2a2fd71e6de2489c4d048e33dfe0b83b9f89a0cbfb871446d1781acbfd1 in /usr/local/bin/ 
# Wed, 07 Sep 2016 18:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Sep 2016 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Sep 2016 18:19:32 GMT
EXPOSE 3306/tcp
# Wed, 07 Sep 2016 18:19:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a6e2414f0abd873b8ad90ff4be0b715f00a68bc51aeea87b5d0306c2721d3d`  
		Last Modified: Wed, 07 Sep 2016 18:20:31 GMT  
		Size: 8.2 MB (8248313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62605666ff10bc4f41959f65029edba6a4f34eb01131969c39e179b1dc9f34d6`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef7cf502115ae87300e4aaa464faa21f2e336c121d6ba8df8bf6d0fb5436227`  
		Last Modified: Wed, 07 Sep 2016 18:21:19 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b84c0dd4ca97f1ff7dc38602edd15e6904cc4c24a1140bcfaeb05fd70a9d8c3`  
		Last Modified: Wed, 07 Sep 2016 18:21:34 GMT  
		Size: 51.7 MB (51716353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668cb19e693ba26c9dad7e154bb4a8076c0729a1eef7d9e269f7e364cb66ba5`  
		Last Modified: Wed, 07 Sep 2016 18:21:19 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ffa5c73c3b2a011a70399fb1825868f44b04c2505c3ff3d5cf6aeae12f4ddc`  
		Last Modified: Wed, 07 Sep 2016 18:21:19 GMT  
		Size: 1.7 KB (1725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b408f8be82cde2a1cebcf40f9cfea0e5146c22fab216c5b085c30df5201ac4b`  
		Last Modified: Wed, 07 Sep 2016 18:21:19 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:31ad2efd094a1336ef1f8efaf40b88a5019778e7d9b8a8579a4f95a6be88eaba
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112573015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72bb9d97fb75c6ee7d8175ff90d20a1098bc3cfb6cbca4f1132af490e8f8107b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:06:16 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:06:19 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 31 Aug 2016 00:07:03 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 07 Sep 2016 18:19:10 GMT
ENV MYSQL_VERSION=5.6.33-1debian8
# Wed, 07 Sep 2016 18:19:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 07 Sep 2016 18:19:29 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 07 Sep 2016 18:19:30 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 07 Sep 2016 18:19:30 GMT
VOLUME [/var/lib/mysql]
# Wed, 07 Sep 2016 18:19:30 GMT
COPY file:ea7ad2a2fd71e6de2489c4d048e33dfe0b83b9f89a0cbfb871446d1781acbfd1 in /usr/local/bin/ 
# Wed, 07 Sep 2016 18:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Sep 2016 18:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Sep 2016 18:19:32 GMT
EXPOSE 3306/tcp
# Wed, 07 Sep 2016 18:19:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a6e2414f0abd873b8ad90ff4be0b715f00a68bc51aeea87b5d0306c2721d3d`  
		Last Modified: Wed, 07 Sep 2016 18:20:31 GMT  
		Size: 8.2 MB (8248313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62605666ff10bc4f41959f65029edba6a4f34eb01131969c39e179b1dc9f34d6`  
		Last Modified: Wed, 07 Sep 2016 18:20:26 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef7cf502115ae87300e4aaa464faa21f2e336c121d6ba8df8bf6d0fb5436227`  
		Last Modified: Wed, 07 Sep 2016 18:21:19 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b84c0dd4ca97f1ff7dc38602edd15e6904cc4c24a1140bcfaeb05fd70a9d8c3`  
		Last Modified: Wed, 07 Sep 2016 18:21:34 GMT  
		Size: 51.7 MB (51716353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668cb19e693ba26c9dad7e154bb4a8076c0729a1eef7d9e269f7e364cb66ba5`  
		Last Modified: Wed, 07 Sep 2016 18:21:19 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ffa5c73c3b2a011a70399fb1825868f44b04c2505c3ff3d5cf6aeae12f4ddc`  
		Last Modified: Wed, 07 Sep 2016 18:21:19 GMT  
		Size: 1.7 KB (1725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b408f8be82cde2a1cebcf40f9cfea0e5146c22fab216c5b085c30df5201ac4b`  
		Last Modified: Wed, 07 Sep 2016 18:21:19 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.52`

```console
$ docker pull mysql@sha256:6fba4f97fd21ccbf072dd3f2b2661e5bf4e2c0a17cbc4f7690397c93713c9fb7
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.52` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87059326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f8142697a08a660f2d4ec90a730fe764e30a9977d234d7f5f5a9f3857ac3c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:07:36 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:07:42 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:07:42 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 07 Sep 2016 18:19:32 GMT
ENV MYSQL_VERSION=5.5.52
# Wed, 07 Sep 2016 18:20:13 GMT
RUN apt-get update && apt-get install -y wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "http://dev.mysql.com/get/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "http://mysql.he.net/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 07 Sep 2016 18:20:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 07 Sep 2016 18:20:14 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 07 Sep 2016 18:20:15 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 07 Sep 2016 18:20:16 GMT
VOLUME [/var/lib/mysql]
# Wed, 07 Sep 2016 18:20:16 GMT
COPY file:1a044afd851c6b488c82f720ccb3533ab267b5b0cc303f7ac0ca34a3f8902ba1 in /usr/local/bin/ 
# Wed, 07 Sep 2016 18:20:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Sep 2016 18:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Sep 2016 18:20:18 GMT
EXPOSE 3306/tcp
# Wed, 07 Sep 2016 18:20:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfbfac5c01605b4e48c0e8e84ef471c51afd32cda842b1ef94115390242092`  
		Last Modified: Wed, 07 Sep 2016 18:22:03 GMT  
		Size: 8.2 MB (8220111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a25d5ea883184576486cc9dda386c7c2458b0201002e8f7fee443bfd19abd`  
		Last Modified: Wed, 07 Sep 2016 18:21:58 GMT  
		Size: 101.1 KB (101083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bced053ccc481de7c84df85ef63624056fd4f1c2fb741298f5db95963731ec`  
		Last Modified: Wed, 07 Sep 2016 18:22:02 GMT  
		Size: 26.1 MB (26149749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9426ad96f08f4dabf78ef4fd52c027fad4de8851b0beeaccfb9b12394480d23d`  
		Last Modified: Wed, 07 Sep 2016 18:21:55 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08801ebc5c08b06fb47e67175a4978ba050d3f1ba8ab97f1b281717c598b1c0c`  
		Last Modified: Wed, 07 Sep 2016 18:21:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e740337c0359c29051da97769ba9892cbcf9e9a08ad28e69780febd88b981080`  
		Last Modified: Wed, 07 Sep 2016 18:21:55 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81141691a716fc736dfa97e1658d76bfc3c9707c086033b3e320745fc93df373`  
		Last Modified: Wed, 07 Sep 2016 18:21:55 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:6fba4f97fd21ccbf072dd3f2b2661e5bf4e2c0a17cbc4f7690397c93713c9fb7
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87059326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f8142697a08a660f2d4ec90a730fe764e30a9977d234d7f5f5a9f3857ac3c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:07:36 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:07:42 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:07:42 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 07 Sep 2016 18:19:32 GMT
ENV MYSQL_VERSION=5.5.52
# Wed, 07 Sep 2016 18:20:13 GMT
RUN apt-get update && apt-get install -y wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "http://dev.mysql.com/get/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "http://mysql.he.net/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 07 Sep 2016 18:20:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 07 Sep 2016 18:20:14 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 07 Sep 2016 18:20:15 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 07 Sep 2016 18:20:16 GMT
VOLUME [/var/lib/mysql]
# Wed, 07 Sep 2016 18:20:16 GMT
COPY file:1a044afd851c6b488c82f720ccb3533ab267b5b0cc303f7ac0ca34a3f8902ba1 in /usr/local/bin/ 
# Wed, 07 Sep 2016 18:20:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Sep 2016 18:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Sep 2016 18:20:18 GMT
EXPOSE 3306/tcp
# Wed, 07 Sep 2016 18:20:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfbfac5c01605b4e48c0e8e84ef471c51afd32cda842b1ef94115390242092`  
		Last Modified: Wed, 07 Sep 2016 18:22:03 GMT  
		Size: 8.2 MB (8220111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a25d5ea883184576486cc9dda386c7c2458b0201002e8f7fee443bfd19abd`  
		Last Modified: Wed, 07 Sep 2016 18:21:58 GMT  
		Size: 101.1 KB (101083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bced053ccc481de7c84df85ef63624056fd4f1c2fb741298f5db95963731ec`  
		Last Modified: Wed, 07 Sep 2016 18:22:02 GMT  
		Size: 26.1 MB (26149749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9426ad96f08f4dabf78ef4fd52c027fad4de8851b0beeaccfb9b12394480d23d`  
		Last Modified: Wed, 07 Sep 2016 18:21:55 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08801ebc5c08b06fb47e67175a4978ba050d3f1ba8ab97f1b281717c598b1c0c`  
		Last Modified: Wed, 07 Sep 2016 18:21:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e740337c0359c29051da97769ba9892cbcf9e9a08ad28e69780febd88b981080`  
		Last Modified: Wed, 07 Sep 2016 18:21:55 GMT  
		Size: 1.8 KB (1761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81141691a716fc736dfa97e1658d76bfc3c9707c086033b3e320745fc93df373`  
		Last Modified: Wed, 07 Sep 2016 18:21:55 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
