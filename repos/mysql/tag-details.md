<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:8.0.0`](#mysql800)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8`](#mysql8)
-	[`mysql:5.7.17`](#mysql5717)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.35`](#mysql5635)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.54`](#mysql5554)
-	[`mysql:5.5`](#mysql55)

## `mysql:8.0.0`

```console
$ docker pull mysql@sha256:89b871d6f2d49504afac58192509004c6427c03ee6deeaa38310fea7bb479063
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129656594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12d3fa69cbd4d948484d110e688d17847c64677bab38fe8dd45c95d28ca0a42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 22:01:53 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:01:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Tue, 08 Nov 2016 22:07:37 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 08 Nov 2016 22:07:37 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 08 Nov 2016 22:07:38 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 08 Nov 2016 22:08:04 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 22:08:05 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 08 Nov 2016 22:08:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Nov 2016 21:07:45 GMT
COPY file:fc6fa63e59403864ccd3dc0d09d92a9b3feb07f725587a6f97309cf96bb52a6b in /usr/local/bin/ 
# Wed, 23 Nov 2016 21:07:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Nov 2016 21:07:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:07:47 GMT
EXPOSE 3306/tcp
# Wed, 23 Nov 2016 21:07:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ddbddf6165e5e545f387551e05d7d5bbd5595dddcd7ffb9302dfb50bb001a3`  
		Last Modified: Tue, 08 Nov 2016 22:02:51 GMT  
		Size: 8.2 MB (8248326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fe0fbc587e49ee77308d9cdd85d6515cb2b34d8993dd24f77f60d806df1691`  
		Last Modified: Tue, 08 Nov 2016 22:02:46 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632f7facf8c47026cbfdbfb2011cf385a003b5284ea77c669d4d5a01d718f823`  
		Last Modified: Tue, 08 Nov 2016 22:08:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d52de44d770dcf63f1fd7a8a2c908fa65359ee363a2e0cdd61d6bd1a01a577`  
		Last Modified: Tue, 08 Nov 2016 22:08:42 GMT  
		Size: 68.8 MB (68810296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816ca0193bb62a10e704ca10722e170c506e6e1095c69c67b0709271be61a64d`  
		Last Modified: Tue, 08 Nov 2016 22:08:20 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0484e4362227f40e80cecf78ab3dd4c1fd8d5a2f75e524909a43e22bdce835ad`  
		Last Modified: Wed, 23 Nov 2016 21:08:10 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440216d52b9da73dafe78c73f05c613168a5d5330ecfc8bd1b59f79e0d074d3`  
		Last Modified: Wed, 23 Nov 2016 21:08:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:89b871d6f2d49504afac58192509004c6427c03ee6deeaa38310fea7bb479063
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129656594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12d3fa69cbd4d948484d110e688d17847c64677bab38fe8dd45c95d28ca0a42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 22:01:53 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:01:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Tue, 08 Nov 2016 22:07:37 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 08 Nov 2016 22:07:37 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 08 Nov 2016 22:07:38 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 08 Nov 2016 22:08:04 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 22:08:05 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 08 Nov 2016 22:08:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Nov 2016 21:07:45 GMT
COPY file:fc6fa63e59403864ccd3dc0d09d92a9b3feb07f725587a6f97309cf96bb52a6b in /usr/local/bin/ 
# Wed, 23 Nov 2016 21:07:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Nov 2016 21:07:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:07:47 GMT
EXPOSE 3306/tcp
# Wed, 23 Nov 2016 21:07:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ddbddf6165e5e545f387551e05d7d5bbd5595dddcd7ffb9302dfb50bb001a3`  
		Last Modified: Tue, 08 Nov 2016 22:02:51 GMT  
		Size: 8.2 MB (8248326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fe0fbc587e49ee77308d9cdd85d6515cb2b34d8993dd24f77f60d806df1691`  
		Last Modified: Tue, 08 Nov 2016 22:02:46 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632f7facf8c47026cbfdbfb2011cf385a003b5284ea77c669d4d5a01d718f823`  
		Last Modified: Tue, 08 Nov 2016 22:08:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d52de44d770dcf63f1fd7a8a2c908fa65359ee363a2e0cdd61d6bd1a01a577`  
		Last Modified: Tue, 08 Nov 2016 22:08:42 GMT  
		Size: 68.8 MB (68810296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816ca0193bb62a10e704ca10722e170c506e6e1095c69c67b0709271be61a64d`  
		Last Modified: Tue, 08 Nov 2016 22:08:20 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0484e4362227f40e80cecf78ab3dd4c1fd8d5a2f75e524909a43e22bdce835ad`  
		Last Modified: Wed, 23 Nov 2016 21:08:10 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440216d52b9da73dafe78c73f05c613168a5d5330ecfc8bd1b59f79e0d074d3`  
		Last Modified: Wed, 23 Nov 2016 21:08:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:89b871d6f2d49504afac58192509004c6427c03ee6deeaa38310fea7bb479063
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129656594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12d3fa69cbd4d948484d110e688d17847c64677bab38fe8dd45c95d28ca0a42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 22:01:53 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:01:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Tue, 08 Nov 2016 22:07:37 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 08 Nov 2016 22:07:37 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 08 Nov 2016 22:07:38 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 08 Nov 2016 22:08:04 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 22:08:05 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 08 Nov 2016 22:08:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Nov 2016 21:07:45 GMT
COPY file:fc6fa63e59403864ccd3dc0d09d92a9b3feb07f725587a6f97309cf96bb52a6b in /usr/local/bin/ 
# Wed, 23 Nov 2016 21:07:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Nov 2016 21:07:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:07:47 GMT
EXPOSE 3306/tcp
# Wed, 23 Nov 2016 21:07:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ddbddf6165e5e545f387551e05d7d5bbd5595dddcd7ffb9302dfb50bb001a3`  
		Last Modified: Tue, 08 Nov 2016 22:02:51 GMT  
		Size: 8.2 MB (8248326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fe0fbc587e49ee77308d9cdd85d6515cb2b34d8993dd24f77f60d806df1691`  
		Last Modified: Tue, 08 Nov 2016 22:02:46 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632f7facf8c47026cbfdbfb2011cf385a003b5284ea77c669d4d5a01d718f823`  
		Last Modified: Tue, 08 Nov 2016 22:08:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d52de44d770dcf63f1fd7a8a2c908fa65359ee363a2e0cdd61d6bd1a01a577`  
		Last Modified: Tue, 08 Nov 2016 22:08:42 GMT  
		Size: 68.8 MB (68810296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816ca0193bb62a10e704ca10722e170c506e6e1095c69c67b0709271be61a64d`  
		Last Modified: Tue, 08 Nov 2016 22:08:20 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0484e4362227f40e80cecf78ab3dd4c1fd8d5a2f75e524909a43e22bdce835ad`  
		Last Modified: Wed, 23 Nov 2016 21:08:10 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a440216d52b9da73dafe78c73f05c613168a5d5330ecfc8bd1b59f79e0d074d3`  
		Last Modified: Wed, 23 Nov 2016 21:08:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.17`

**does not exist** (yet?)

## `mysql:5.7`

```console
$ docker pull mysql@sha256:89cc6ff6a7ac9916c3384e864fb04b8ee9415b572f872a2a4cf5b909dbbca81b
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131621502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9124e6c552f0e739ef130add0e215af6abfc6efc0b43cc26e5a16b15df6c1ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 22:01:53 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:01:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Tue, 08 Nov 2016 22:01:56 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 08 Nov 2016 22:01:56 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Tue, 08 Nov 2016 22:01:57 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 08 Nov 2016 22:02:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 22:02:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 08 Nov 2016 22:02:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Nov 2016 21:07:48 GMT
COPY file:fc6fa63e59403864ccd3dc0d09d92a9b3feb07f725587a6f97309cf96bb52a6b in /usr/local/bin/ 
# Wed, 23 Nov 2016 21:07:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Nov 2016 21:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:07:50 GMT
EXPOSE 3306/tcp
# Wed, 23 Nov 2016 21:07:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ddbddf6165e5e545f387551e05d7d5bbd5595dddcd7ffb9302dfb50bb001a3`  
		Last Modified: Tue, 08 Nov 2016 22:02:51 GMT  
		Size: 8.2 MB (8248326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fe0fbc587e49ee77308d9cdd85d6515cb2b34d8993dd24f77f60d806df1691`  
		Last Modified: Tue, 08 Nov 2016 22:02:46 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e74acdb29145772c01041f8f349219eb08147281a93ffa5425c50a14a8e478`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c2df82e984490e63541ad36189853589be801637343289f6b7e1382c46ed0f`  
		Last Modified: Tue, 08 Nov 2016 22:03:05 GMT  
		Size: 70.8 MB (70775153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a9e6a85c8ab81ee149688313a5dfa2b9d973e498148e87669962ee81c246b`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fb2f3afd870273118a2badb6d13b8276c956a910b0dd0fd0c764a29ec92bb0`  
		Last Modified: Wed, 23 Nov 2016 21:08:59 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30724006a583a584d780d26ce5ef496ef5c10e535789b0b686371e66cc4a4644`  
		Last Modified: Wed, 23 Nov 2016 21:08:58 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:89cc6ff6a7ac9916c3384e864fb04b8ee9415b572f872a2a4cf5b909dbbca81b
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131621502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9124e6c552f0e739ef130add0e215af6abfc6efc0b43cc26e5a16b15df6c1ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 22:01:53 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:01:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Tue, 08 Nov 2016 22:01:56 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 08 Nov 2016 22:01:56 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Tue, 08 Nov 2016 22:01:57 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 08 Nov 2016 22:02:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 22:02:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 08 Nov 2016 22:02:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Nov 2016 21:07:48 GMT
COPY file:fc6fa63e59403864ccd3dc0d09d92a9b3feb07f725587a6f97309cf96bb52a6b in /usr/local/bin/ 
# Wed, 23 Nov 2016 21:07:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Nov 2016 21:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:07:50 GMT
EXPOSE 3306/tcp
# Wed, 23 Nov 2016 21:07:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ddbddf6165e5e545f387551e05d7d5bbd5595dddcd7ffb9302dfb50bb001a3`  
		Last Modified: Tue, 08 Nov 2016 22:02:51 GMT  
		Size: 8.2 MB (8248326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fe0fbc587e49ee77308d9cdd85d6515cb2b34d8993dd24f77f60d806df1691`  
		Last Modified: Tue, 08 Nov 2016 22:02:46 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e74acdb29145772c01041f8f349219eb08147281a93ffa5425c50a14a8e478`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c2df82e984490e63541ad36189853589be801637343289f6b7e1382c46ed0f`  
		Last Modified: Tue, 08 Nov 2016 22:03:05 GMT  
		Size: 70.8 MB (70775153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a9e6a85c8ab81ee149688313a5dfa2b9d973e498148e87669962ee81c246b`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fb2f3afd870273118a2badb6d13b8276c956a910b0dd0fd0c764a29ec92bb0`  
		Last Modified: Wed, 23 Nov 2016 21:08:59 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30724006a583a584d780d26ce5ef496ef5c10e535789b0b686371e66cc4a4644`  
		Last Modified: Wed, 23 Nov 2016 21:08:58 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:89cc6ff6a7ac9916c3384e864fb04b8ee9415b572f872a2a4cf5b909dbbca81b
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131621502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9124e6c552f0e739ef130add0e215af6abfc6efc0b43cc26e5a16b15df6c1ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 22:01:53 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:01:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Tue, 08 Nov 2016 22:01:56 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 08 Nov 2016 22:01:56 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Tue, 08 Nov 2016 22:01:57 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 08 Nov 2016 22:02:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 22:02:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 08 Nov 2016 22:02:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Nov 2016 21:07:48 GMT
COPY file:fc6fa63e59403864ccd3dc0d09d92a9b3feb07f725587a6f97309cf96bb52a6b in /usr/local/bin/ 
# Wed, 23 Nov 2016 21:07:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Nov 2016 21:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:07:50 GMT
EXPOSE 3306/tcp
# Wed, 23 Nov 2016 21:07:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ddbddf6165e5e545f387551e05d7d5bbd5595dddcd7ffb9302dfb50bb001a3`  
		Last Modified: Tue, 08 Nov 2016 22:02:51 GMT  
		Size: 8.2 MB (8248326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fe0fbc587e49ee77308d9cdd85d6515cb2b34d8993dd24f77f60d806df1691`  
		Last Modified: Tue, 08 Nov 2016 22:02:46 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e74acdb29145772c01041f8f349219eb08147281a93ffa5425c50a14a8e478`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c2df82e984490e63541ad36189853589be801637343289f6b7e1382c46ed0f`  
		Last Modified: Tue, 08 Nov 2016 22:03:05 GMT  
		Size: 70.8 MB (70775153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42a9e6a85c8ab81ee149688313a5dfa2b9d973e498148e87669962ee81c246b`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fb2f3afd870273118a2badb6d13b8276c956a910b0dd0fd0c764a29ec92bb0`  
		Last Modified: Wed, 23 Nov 2016 21:08:59 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30724006a583a584d780d26ce5ef496ef5c10e535789b0b686371e66cc4a4644`  
		Last Modified: Wed, 23 Nov 2016 21:08:58 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.35`

**does not exist** (yet?)

## `mysql:5.6`

```console
$ docker pull mysql@sha256:967a8020398f76f99ba74144e6e661f46003c685192b83d7bb87d026562319ae
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112613080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c7801756fae0b1b3691c1ac280e36118faa14f2f33bf6fa33d5ea001157f04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 22:01:53 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:01:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Tue, 08 Nov 2016 22:06:15 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 08 Nov 2016 22:06:15 GMT
ENV MYSQL_VERSION=5.6.34-1debian8
# Tue, 08 Nov 2016 22:06:16 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 08 Nov 2016 22:06:34 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 22:06:35 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 08 Nov 2016 22:06:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Nov 2016 21:07:52 GMT
COPY file:603f69aa45f7824bbbaa8d837fcd5ea1da2df9450f342a1046ba7e0d6cecaa4f in /usr/local/bin/ 
# Wed, 23 Nov 2016 21:07:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Nov 2016 21:07:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:07:53 GMT
EXPOSE 3306/tcp
# Wed, 23 Nov 2016 21:07:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ddbddf6165e5e545f387551e05d7d5bbd5595dddcd7ffb9302dfb50bb001a3`  
		Last Modified: Tue, 08 Nov 2016 22:02:51 GMT  
		Size: 8.2 MB (8248326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fe0fbc587e49ee77308d9cdd85d6515cb2b34d8993dd24f77f60d806df1691`  
		Last Modified: Tue, 08 Nov 2016 22:02:46 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ca5a1cb72cbe1172da5b6d29d5331c2b8ab0b606552859b5935081d72aebe8`  
		Last Modified: Tue, 08 Nov 2016 22:06:50 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b52bffe9c7d4c1c9462bb905b4629f0f3e2ad9b11fe72acaaa59f972ecf0b30`  
		Last Modified: Tue, 08 Nov 2016 22:07:09 GMT  
		Size: 51.8 MB (51766413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d2ee09f828294a399dfbb566a203300baceaf1864b1c03a206d3bf9a390f5a`  
		Last Modified: Tue, 08 Nov 2016 22:06:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3920bfd7c917ca0a512d94be707752d8c01dbddfaa72bd37aabe54cf5f60cf8e`  
		Last Modified: Wed, 23 Nov 2016 21:10:03 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df65a8d81c9422af1ba9977de9dc138587cd1939f2e1318a00f2199d568124d`  
		Last Modified: Wed, 23 Nov 2016 21:10:01 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.54`

**does not exist** (yet?)

## `mysql:5.5`

```console
$ docker pull mysql@sha256:2aa365becf97739d924798b4304bbf6146467efd8b252b555f13bec28a12f8f9
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87400622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e21a45a56604ab6821846a5ce593adec8c35055c61801770b7a54dac0f1550a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 22:04:09 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:04:20 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:04:20 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 08 Nov 2016 22:04:28 GMT
ENV MYSQL_VERSION=5.5.53
# Tue, 08 Nov 2016 22:05:18 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 08 Nov 2016 22:05:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 08 Nov 2016 22:05:23 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 08 Nov 2016 22:05:24 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 22:05:25 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Nov 2016 21:07:55 GMT
COPY file:245ce9bcff8bc17aee3109b8f5b96ad95b196827b76edea92605d4b60dfbe885 in /usr/local/bin/ 
# Wed, 23 Nov 2016 21:07:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Nov 2016 21:07:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:07:57 GMT
EXPOSE 3306/tcp
# Wed, 23 Nov 2016 21:07:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581edb358f3efb965e7656b9ab851b21f298a1aa19947be78f60c112a467bc5d`  
		Last Modified: Tue, 08 Nov 2016 22:05:46 GMT  
		Size: 8.2 MB (8220195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4ad3824469659c6f29f054507ac3975faacde4c53a8efac90ff22792b229e9`  
		Last Modified: Tue, 08 Nov 2016 22:05:41 GMT  
		Size: 101.1 KB (101113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3fccb307ffb6d5ce5bbd966233f2024a6d9d1df61216ce3f11901c22d5724a`  
		Last Modified: Tue, 08 Nov 2016 22:05:48 GMT  
		Size: 26.5 MB (26500977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bc471865b4a0aa57a8c9d0532460a6fa9f4c82fc796305c04f506100134fe6`  
		Last Modified: Tue, 08 Nov 2016 22:05:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d19ce23241a0ab2ca87042f79543ed3b04c01b40d35de08407c52066109eec8`  
		Last Modified: Tue, 08 Nov 2016 22:05:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3a76908528fdbacdef44302ce137e8bd8c6f6dc08a65f290b82802adf1de6a`  
		Last Modified: Wed, 23 Nov 2016 21:10:35 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068c2a1c3d8e62eb605b3159e6a5436877749ec5aa5e0e4a596a7926030dc882`  
		Last Modified: Wed, 23 Nov 2016 21:10:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
