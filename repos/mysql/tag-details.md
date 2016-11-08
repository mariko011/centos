<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:8.0.0`](#mysql800)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8`](#mysql8)
-	[`mysql:5.7.16`](#mysql5716)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.34`](#mysql5634)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.53`](#mysql5553)
-	[`mysql:5.5`](#mysql55)

## `mysql:8.0.0`

```console
$ docker pull mysql@sha256:d2a2b5be00564bc251484b8f9d3df3435225ca9b6700f45e2436185894c8f69f
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129656291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f426dd070d5b6e4646dc013d290d6a7d60b582f00dd0cb968bccfd034610706a`
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
# Tue, 08 Nov 2016 22:08:06 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:08:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:08:08 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:08:08 GMT
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
	-	`sha256:9e85b60799774aa977ccbd3a76d224709a80384d2746941cb49f14cee63bc8ca`  
		Last Modified: Tue, 08 Nov 2016 22:08:19 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6854077987aa87f1e39a0e4860e3bbf618cebd6e8118ca824ea1e295bf62ecc1`  
		Last Modified: Tue, 08 Nov 2016 22:08:19 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:d2a2b5be00564bc251484b8f9d3df3435225ca9b6700f45e2436185894c8f69f
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129656291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f426dd070d5b6e4646dc013d290d6a7d60b582f00dd0cb968bccfd034610706a`
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
# Tue, 08 Nov 2016 22:08:06 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:08:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:08:08 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:08:08 GMT
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
	-	`sha256:9e85b60799774aa977ccbd3a76d224709a80384d2746941cb49f14cee63bc8ca`  
		Last Modified: Tue, 08 Nov 2016 22:08:19 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6854077987aa87f1e39a0e4860e3bbf618cebd6e8118ca824ea1e295bf62ecc1`  
		Last Modified: Tue, 08 Nov 2016 22:08:19 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:d2a2b5be00564bc251484b8f9d3df3435225ca9b6700f45e2436185894c8f69f
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129656291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f426dd070d5b6e4646dc013d290d6a7d60b582f00dd0cb968bccfd034610706a`
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
# Tue, 08 Nov 2016 22:08:06 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:08:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:08:08 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:08:08 GMT
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
	-	`sha256:9e85b60799774aa977ccbd3a76d224709a80384d2746941cb49f14cee63bc8ca`  
		Last Modified: Tue, 08 Nov 2016 22:08:19 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6854077987aa87f1e39a0e4860e3bbf618cebd6e8118ca824ea1e295bf62ecc1`  
		Last Modified: Tue, 08 Nov 2016 22:08:19 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.16`

```console
$ docker pull mysql@sha256:5bfc6c2a3adbcb9aad7a111b18a2a8defec59d4284063a0f7c84ea44a81a365f
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.16` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131621203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd88b71c6c8c354a66d5f9d97f128cc32507654510b67dcc63a22df24d101338`
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
# Tue, 08 Nov 2016 22:02:30 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:02:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:02:32 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:02:32 GMT
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
	-	`sha256:aec13cb17a3df915b0a815df294000e8942a58c4c139bd0beed2d7957d16a962`  
		Last Modified: Tue, 08 Nov 2016 22:02:44 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74f62564a6f5093d503e8d82677f7686a9a92d15d55a85ace0a3fb8013a131e`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:5bfc6c2a3adbcb9aad7a111b18a2a8defec59d4284063a0f7c84ea44a81a365f
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131621203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd88b71c6c8c354a66d5f9d97f128cc32507654510b67dcc63a22df24d101338`
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
# Tue, 08 Nov 2016 22:02:30 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:02:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:02:32 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:02:32 GMT
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
	-	`sha256:aec13cb17a3df915b0a815df294000e8942a58c4c139bd0beed2d7957d16a962`  
		Last Modified: Tue, 08 Nov 2016 22:02:44 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74f62564a6f5093d503e8d82677f7686a9a92d15d55a85ace0a3fb8013a131e`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:5bfc6c2a3adbcb9aad7a111b18a2a8defec59d4284063a0f7c84ea44a81a365f
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131621203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd88b71c6c8c354a66d5f9d97f128cc32507654510b67dcc63a22df24d101338`
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
# Tue, 08 Nov 2016 22:02:30 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:02:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:02:32 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:02:32 GMT
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
	-	`sha256:aec13cb17a3df915b0a815df294000e8942a58c4c139bd0beed2d7957d16a962`  
		Last Modified: Tue, 08 Nov 2016 22:02:44 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74f62564a6f5093d503e8d82677f7686a9a92d15d55a85ace0a3fb8013a131e`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:5bfc6c2a3adbcb9aad7a111b18a2a8defec59d4284063a0f7c84ea44a81a365f
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131621203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd88b71c6c8c354a66d5f9d97f128cc32507654510b67dcc63a22df24d101338`
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
# Tue, 08 Nov 2016 22:02:30 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:02:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:02:32 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:02:32 GMT
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
	-	`sha256:aec13cb17a3df915b0a815df294000e8942a58c4c139bd0beed2d7957d16a962`  
		Last Modified: Tue, 08 Nov 2016 22:02:44 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74f62564a6f5093d503e8d82677f7686a9a92d15d55a85ace0a3fb8013a131e`  
		Last Modified: Tue, 08 Nov 2016 22:02:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.34`

```console
$ docker pull mysql@sha256:e9b0bc4b8f18429479b74b07f4d515f2ac14da77c146201a885c5d7619028f4d
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.34` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112612781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e0e4e9ce5a4e3413dd7573fec9f45782b4b78d642a95defdd54be2692c4870`
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
# Tue, 08 Nov 2016 22:06:36 GMT
COPY file:cda007baf84395bb3d546732cef80265371cef33ce2575a909b2c9e58167e3d6 in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:06:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:06:38 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:06:38 GMT
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
	-	`sha256:1b6fabc0b5ddbdd3188a955d249b01b231dbda2818eb77ce9ad223c38818fccf`  
		Last Modified: Tue, 08 Nov 2016 22:06:50 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51ceb9e61eab6dc96f360d84ff9db380e014fd33aee4fcb9891b3b929f58a33`  
		Last Modified: Tue, 08 Nov 2016 22:06:50 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:e9b0bc4b8f18429479b74b07f4d515f2ac14da77c146201a885c5d7619028f4d
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112612781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e0e4e9ce5a4e3413dd7573fec9f45782b4b78d642a95defdd54be2692c4870`
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
# Tue, 08 Nov 2016 22:06:36 GMT
COPY file:cda007baf84395bb3d546732cef80265371cef33ce2575a909b2c9e58167e3d6 in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:06:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:06:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:06:38 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:06:38 GMT
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
	-	`sha256:1b6fabc0b5ddbdd3188a955d249b01b231dbda2818eb77ce9ad223c38818fccf`  
		Last Modified: Tue, 08 Nov 2016 22:06:50 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51ceb9e61eab6dc96f360d84ff9db380e014fd33aee4fcb9891b3b929f58a33`  
		Last Modified: Tue, 08 Nov 2016 22:06:50 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.53`

```console
$ docker pull mysql@sha256:7b140701fdc3b0916421782cbe263bebde6bbabd9b4a69eb529e668102d4ead5
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.53` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87400325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f3eec60e17bafd02176e7060fd2c7e8757f45b203a50343ab5ca1155deda1c`
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
# Tue, 08 Nov 2016 22:05:25 GMT
COPY file:6043e9c7818db478624a89023dcfb9c06258577c0dc050e435bfae209bfe73db in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:05:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:05:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:05:27 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:05:27 GMT
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
	-	`sha256:cbcfa8a8ca0c4f638f30724f9ef00790e58273a3b97cfd463471c80797257db0`  
		Last Modified: Tue, 08 Nov 2016 22:05:39 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc80053c4cc5de80590a33a30dd7e8fab26ab1e6516b5880300334ccfb779dd4`  
		Last Modified: Tue, 08 Nov 2016 22:05:39 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:7b140701fdc3b0916421782cbe263bebde6bbabd9b4a69eb529e668102d4ead5
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87400325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f3eec60e17bafd02176e7060fd2c7e8757f45b203a50343ab5ca1155deda1c`
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
# Tue, 08 Nov 2016 22:05:25 GMT
COPY file:6043e9c7818db478624a89023dcfb9c06258577c0dc050e435bfae209bfe73db in /usr/local/bin/ 
# Tue, 08 Nov 2016 22:05:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 22:05:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:05:27 GMT
EXPOSE 3306/tcp
# Tue, 08 Nov 2016 22:05:27 GMT
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
	-	`sha256:cbcfa8a8ca0c4f638f30724f9ef00790e58273a3b97cfd463471c80797257db0`  
		Last Modified: Tue, 08 Nov 2016 22:05:39 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc80053c4cc5de80590a33a30dd7e8fab26ab1e6516b5880300334ccfb779dd4`  
		Last Modified: Tue, 08 Nov 2016 22:05:39 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
