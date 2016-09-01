<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5.7.14`](#mysql5714)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.32`](#mysql5632)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.51`](#mysql5551)
-	[`mysql:5.5`](#mysql55)

## `mysql:5.7.14`

```console
$ docker pull mysql@sha256:c8f03238ca1783d25af320877f063a36dbfce0daa56a7b4955e6c6e05ab5c70b
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.14` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131284530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3b6b994512e9a50b94f0c87a01535806834fc4e755493ab93ec8e87574c8d6`
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
# Mon, 01 Aug 2016 17:19:20 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Mon, 01 Aug 2016 17:19:40 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 01 Aug 2016 23:19:13 GMT
ENV MYSQL_VERSION=5.7.14-1debian8
# Mon, 01 Aug 2016 23:19:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 01 Aug 2016 23:20:39 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 Aug 2016 23:20:41 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 01 Aug 2016 23:20:42 GMT
VOLUME [/var/lib/mysql]
# Mon, 22 Aug 2016 19:20:08 GMT
COPY file:ad172e06f0272aa49d8a0aca6c18ab1615d6d3beee72933134c1ac600cddeb94 in /usr/local/bin/
# Mon, 22 Aug 2016 19:20:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:20:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:20:12 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:20:13 GMT
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
	-	`sha256:7b8a8ccc8d5027aec90cab6ec93dcf6ad3dc5fa563dc75ba078c0f3c441692fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:40 GMT  
		Size: 8.2 MB (8248123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a40eeae36e9c96f2cc88a20e673f55230d8023eae14a3bef6df4834d3c67e27`  
		Last Modified: Mon, 01 Aug 2016 23:25:35 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833539b564781075652e9ea85690229476b6929b55652f6904e8ab44175de1fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f350efbb7e5805fca05177ab17c449d7c9c4cc831e74ccfb633500d8e4ca8a1`  
		Last Modified: Mon, 01 Aug 2016 23:25:58 GMT  
		Size: 70.4 MB (70430444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266f161e49c61a5b3000b155159ecc55251d17c02413188db7ed19722037682a`  
		Last Modified: Mon, 01 Aug 2016 23:25:33 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53a75e4522086d5e6ff0d773e81c655cbfa08d8010cfaa8c46ec1eef5a5dcfe`  
		Last Modified: Mon, 22 Aug 2016 19:20:39 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75196bb75c295fe6877a6951df5c4d1442cad0158b09ee9cd9b73a5505a8a4f9`  
		Last Modified: Mon, 22 Aug 2016 19:20:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:c8f03238ca1783d25af320877f063a36dbfce0daa56a7b4955e6c6e05ab5c70b
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131284530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3b6b994512e9a50b94f0c87a01535806834fc4e755493ab93ec8e87574c8d6`
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
# Mon, 01 Aug 2016 17:19:20 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Mon, 01 Aug 2016 17:19:40 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 01 Aug 2016 23:19:13 GMT
ENV MYSQL_VERSION=5.7.14-1debian8
# Mon, 01 Aug 2016 23:19:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 01 Aug 2016 23:20:39 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 Aug 2016 23:20:41 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 01 Aug 2016 23:20:42 GMT
VOLUME [/var/lib/mysql]
# Mon, 22 Aug 2016 19:20:08 GMT
COPY file:ad172e06f0272aa49d8a0aca6c18ab1615d6d3beee72933134c1ac600cddeb94 in /usr/local/bin/
# Mon, 22 Aug 2016 19:20:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:20:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:20:12 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:20:13 GMT
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
	-	`sha256:7b8a8ccc8d5027aec90cab6ec93dcf6ad3dc5fa563dc75ba078c0f3c441692fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:40 GMT  
		Size: 8.2 MB (8248123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a40eeae36e9c96f2cc88a20e673f55230d8023eae14a3bef6df4834d3c67e27`  
		Last Modified: Mon, 01 Aug 2016 23:25:35 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833539b564781075652e9ea85690229476b6929b55652f6904e8ab44175de1fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f350efbb7e5805fca05177ab17c449d7c9c4cc831e74ccfb633500d8e4ca8a1`  
		Last Modified: Mon, 01 Aug 2016 23:25:58 GMT  
		Size: 70.4 MB (70430444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266f161e49c61a5b3000b155159ecc55251d17c02413188db7ed19722037682a`  
		Last Modified: Mon, 01 Aug 2016 23:25:33 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53a75e4522086d5e6ff0d773e81c655cbfa08d8010cfaa8c46ec1eef5a5dcfe`  
		Last Modified: Mon, 22 Aug 2016 19:20:39 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75196bb75c295fe6877a6951df5c4d1442cad0158b09ee9cd9b73a5505a8a4f9`  
		Last Modified: Mon, 22 Aug 2016 19:20:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:c8f03238ca1783d25af320877f063a36dbfce0daa56a7b4955e6c6e05ab5c70b
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131284530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3b6b994512e9a50b94f0c87a01535806834fc4e755493ab93ec8e87574c8d6`
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
# Mon, 01 Aug 2016 17:19:20 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Mon, 01 Aug 2016 17:19:40 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 01 Aug 2016 23:19:13 GMT
ENV MYSQL_VERSION=5.7.14-1debian8
# Mon, 01 Aug 2016 23:19:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 01 Aug 2016 23:20:39 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 Aug 2016 23:20:41 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 01 Aug 2016 23:20:42 GMT
VOLUME [/var/lib/mysql]
# Mon, 22 Aug 2016 19:20:08 GMT
COPY file:ad172e06f0272aa49d8a0aca6c18ab1615d6d3beee72933134c1ac600cddeb94 in /usr/local/bin/
# Mon, 22 Aug 2016 19:20:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:20:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:20:12 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:20:13 GMT
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
	-	`sha256:7b8a8ccc8d5027aec90cab6ec93dcf6ad3dc5fa563dc75ba078c0f3c441692fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:40 GMT  
		Size: 8.2 MB (8248123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a40eeae36e9c96f2cc88a20e673f55230d8023eae14a3bef6df4834d3c67e27`  
		Last Modified: Mon, 01 Aug 2016 23:25:35 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833539b564781075652e9ea85690229476b6929b55652f6904e8ab44175de1fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f350efbb7e5805fca05177ab17c449d7c9c4cc831e74ccfb633500d8e4ca8a1`  
		Last Modified: Mon, 01 Aug 2016 23:25:58 GMT  
		Size: 70.4 MB (70430444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266f161e49c61a5b3000b155159ecc55251d17c02413188db7ed19722037682a`  
		Last Modified: Mon, 01 Aug 2016 23:25:33 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53a75e4522086d5e6ff0d773e81c655cbfa08d8010cfaa8c46ec1eef5a5dcfe`  
		Last Modified: Mon, 22 Aug 2016 19:20:39 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75196bb75c295fe6877a6951df5c4d1442cad0158b09ee9cd9b73a5505a8a4f9`  
		Last Modified: Mon, 22 Aug 2016 19:20:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:c8f03238ca1783d25af320877f063a36dbfce0daa56a7b4955e6c6e05ab5c70b
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131284530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3b6b994512e9a50b94f0c87a01535806834fc4e755493ab93ec8e87574c8d6`
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
# Mon, 01 Aug 2016 17:19:20 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Mon, 01 Aug 2016 17:19:40 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 01 Aug 2016 23:19:13 GMT
ENV MYSQL_VERSION=5.7.14-1debian8
# Mon, 01 Aug 2016 23:19:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 01 Aug 2016 23:20:39 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 Aug 2016 23:20:41 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 01 Aug 2016 23:20:42 GMT
VOLUME [/var/lib/mysql]
# Mon, 22 Aug 2016 19:20:08 GMT
COPY file:ad172e06f0272aa49d8a0aca6c18ab1615d6d3beee72933134c1ac600cddeb94 in /usr/local/bin/
# Mon, 22 Aug 2016 19:20:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:20:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:20:12 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:20:13 GMT
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
	-	`sha256:7b8a8ccc8d5027aec90cab6ec93dcf6ad3dc5fa563dc75ba078c0f3c441692fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:40 GMT  
		Size: 8.2 MB (8248123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a40eeae36e9c96f2cc88a20e673f55230d8023eae14a3bef6df4834d3c67e27`  
		Last Modified: Mon, 01 Aug 2016 23:25:35 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833539b564781075652e9ea85690229476b6929b55652f6904e8ab44175de1fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f350efbb7e5805fca05177ab17c449d7c9c4cc831e74ccfb633500d8e4ca8a1`  
		Last Modified: Mon, 01 Aug 2016 23:25:58 GMT  
		Size: 70.4 MB (70430444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266f161e49c61a5b3000b155159ecc55251d17c02413188db7ed19722037682a`  
		Last Modified: Mon, 01 Aug 2016 23:25:33 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53a75e4522086d5e6ff0d773e81c655cbfa08d8010cfaa8c46ec1eef5a5dcfe`  
		Last Modified: Mon, 22 Aug 2016 19:20:39 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75196bb75c295fe6877a6951df5c4d1442cad0158b09ee9cd9b73a5505a8a4f9`  
		Last Modified: Mon, 22 Aug 2016 19:20:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.32`

```console
$ docker pull mysql@sha256:270e24abb445e1741c99251753d66e7c49a514007ec1b65b47f332055ef4a612
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.32` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112491686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4770ef651a9dbb998e2b1c8875c20bb9a329ca3c1f40f92fcba9979ba66791`
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
# Mon, 01 Aug 2016 17:19:20 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Mon, 01 Aug 2016 23:20:49 GMT
ENV MYSQL_MAJOR=5.6
# Mon, 01 Aug 2016 23:20:50 GMT
ENV MYSQL_VERSION=5.6.32-1debian8
# Mon, 01 Aug 2016 23:20:52 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 01 Aug 2016 23:22:11 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 Aug 2016 23:22:13 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 01 Aug 2016 23:22:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 22 Aug 2016 19:20:15 GMT
COPY file:ea7ad2a2fd71e6de2489c4d048e33dfe0b83b9f89a0cbfb871446d1781acbfd1 in /usr/local/bin/
# Mon, 22 Aug 2016 19:20:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:20:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:20:19 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:20:20 GMT
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
	-	`sha256:7b8a8ccc8d5027aec90cab6ec93dcf6ad3dc5fa563dc75ba078c0f3c441692fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:40 GMT  
		Size: 8.2 MB (8248123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a40eeae36e9c96f2cc88a20e673f55230d8023eae14a3bef6df4834d3c67e27`  
		Last Modified: Mon, 01 Aug 2016 23:25:35 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a09128b6a341a2a667b9eff2b741062826b71ef7203cc792c7be42a4e0fcd58`  
		Last Modified: Mon, 01 Aug 2016 23:26:51 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587b9302fad12b799d194138fcb4b7c6ba33c889bf7626a3d056771d27836cda`  
		Last Modified: Mon, 01 Aug 2016 23:27:10 GMT  
		Size: 51.6 MB (51637010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c47ca2042a34c0ec2402d551b809b9ef9abdad0f8c2a1175e35b400c88ad7a`  
		Last Modified: Mon, 01 Aug 2016 23:26:51 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588a9948578df5e1170943c649990588bab79ad465480f32e622b3010608fd2c`  
		Last Modified: Mon, 22 Aug 2016 19:21:32 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd646c55baaaeada150f5802557aedc8ccde3ae9552225d02943c631570fd759`  
		Last Modified: Mon, 22 Aug 2016 19:21:31 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:270e24abb445e1741c99251753d66e7c49a514007ec1b65b47f332055ef4a612
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112491686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4770ef651a9dbb998e2b1c8875c20bb9a329ca3c1f40f92fcba9979ba66791`
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
# Mon, 01 Aug 2016 17:19:20 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Mon, 01 Aug 2016 23:20:49 GMT
ENV MYSQL_MAJOR=5.6
# Mon, 01 Aug 2016 23:20:50 GMT
ENV MYSQL_VERSION=5.6.32-1debian8
# Mon, 01 Aug 2016 23:20:52 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 01 Aug 2016 23:22:11 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 Aug 2016 23:22:13 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 01 Aug 2016 23:22:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 22 Aug 2016 19:20:15 GMT
COPY file:ea7ad2a2fd71e6de2489c4d048e33dfe0b83b9f89a0cbfb871446d1781acbfd1 in /usr/local/bin/
# Mon, 22 Aug 2016 19:20:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:20:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:20:19 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:20:20 GMT
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
	-	`sha256:7b8a8ccc8d5027aec90cab6ec93dcf6ad3dc5fa563dc75ba078c0f3c441692fd`  
		Last Modified: Mon, 01 Aug 2016 23:25:40 GMT  
		Size: 8.2 MB (8248123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a40eeae36e9c96f2cc88a20e673f55230d8023eae14a3bef6df4834d3c67e27`  
		Last Modified: Mon, 01 Aug 2016 23:25:35 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a09128b6a341a2a667b9eff2b741062826b71ef7203cc792c7be42a4e0fcd58`  
		Last Modified: Mon, 01 Aug 2016 23:26:51 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587b9302fad12b799d194138fcb4b7c6ba33c889bf7626a3d056771d27836cda`  
		Last Modified: Mon, 01 Aug 2016 23:27:10 GMT  
		Size: 51.6 MB (51637010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c47ca2042a34c0ec2402d551b809b9ef9abdad0f8c2a1175e35b400c88ad7a`  
		Last Modified: Mon, 01 Aug 2016 23:26:51 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588a9948578df5e1170943c649990588bab79ad465480f32e622b3010608fd2c`  
		Last Modified: Mon, 22 Aug 2016 19:21:32 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd646c55baaaeada150f5802557aedc8ccde3ae9552225d02943c631570fd759`  
		Last Modified: Mon, 22 Aug 2016 19:21:31 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.51`

```console
$ docker pull mysql@sha256:2047b38e6ce27a4b06d670298eab3a1e078987d505bd968e9294c11f9adf42b2
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.51` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87048629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ae120c924c00a0589d580985ed39076aabfd6464927a950be95e251992b71d`
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
# Mon, 01 Aug 2016 17:13:22 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:14:23 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:14:24 GMT
ENV MYSQL_MAJOR=5.5
# Mon, 01 Aug 2016 23:22:22 GMT
ENV MYSQL_VERSION=5.5.51
# Mon, 01 Aug 2016 23:25:10 GMT
RUN apt-get update && apt-get install -y wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "http://dev.mysql.com/get/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "http://mysql.he.net/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Mon, 01 Aug 2016 23:25:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Mon, 01 Aug 2016 23:25:13 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Mon, 01 Aug 2016 23:25:15 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 Aug 2016 23:25:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 22 Aug 2016 19:20:22 GMT
COPY file:1a044afd851c6b488c82f720ccb3533ab267b5b0cc303f7ac0ca34a3f8902ba1 in /usr/local/bin/
# Mon, 22 Aug 2016 19:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:20:25 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:20:26 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:20:27 GMT
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
	-	`sha256:340ae4ba31755987a5eb825e17b02451c3708b7ac5c461292d5a617608def066`  
		Last Modified: Mon, 01 Aug 2016 17:18:00 GMT  
		Size: 8.2 MB (8220100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dcfe7e089907706efc38f7b16efc9e14ce6ba61a14a86b911546b116b88bc`  
		Last Modified: Mon, 01 Aug 2016 17:17:55 GMT  
		Size: 101.0 KB (100990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6210a134405fe4049de41b9679f1930bce5142716d6862da1dad078c889ac675`  
		Last Modified: Mon, 01 Aug 2016 23:27:47 GMT  
		Size: 26.1 MB (26140944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b189715ec35e27ab5aa7e9858de631117883d1e3b62ee69d2a8fe651337899`  
		Last Modified: Mon, 01 Aug 2016 23:27:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a578ab3b5cebdf9b8889fdaa98ba45d6cb3ab52400de05a2666e839a1cbe112`  
		Last Modified: Mon, 01 Aug 2016 23:27:39 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15738e1b8391fcbe58e4e2f1a64444961305f04f8c7efb3ef226a43dcd56959`  
		Last Modified: Mon, 22 Aug 2016 19:22:01 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099ad23ced3c0e9949749e07d043b24d3e1ed448308e9a934a21432a5ff4f74b`  
		Last Modified: Mon, 22 Aug 2016 19:22:01 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:2047b38e6ce27a4b06d670298eab3a1e078987d505bd968e9294c11f9adf42b2
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87048629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ae120c924c00a0589d580985ed39076aabfd6464927a950be95e251992b71d`
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
# Mon, 01 Aug 2016 17:13:22 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:14:23 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 17:14:24 GMT
ENV MYSQL_MAJOR=5.5
# Mon, 01 Aug 2016 23:22:22 GMT
ENV MYSQL_VERSION=5.5.51
# Mon, 01 Aug 2016 23:25:10 GMT
RUN apt-get update && apt-get install -y wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "http://dev.mysql.com/get/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "http://mysql.he.net/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Mon, 01 Aug 2016 23:25:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Mon, 01 Aug 2016 23:25:13 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Mon, 01 Aug 2016 23:25:15 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 01 Aug 2016 23:25:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 22 Aug 2016 19:20:22 GMT
COPY file:1a044afd851c6b488c82f720ccb3533ab267b5b0cc303f7ac0ca34a3f8902ba1 in /usr/local/bin/
# Mon, 22 Aug 2016 19:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 22 Aug 2016 19:20:25 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 22 Aug 2016 19:20:26 GMT
EXPOSE 3306/tcp
# Mon, 22 Aug 2016 19:20:27 GMT
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
	-	`sha256:340ae4ba31755987a5eb825e17b02451c3708b7ac5c461292d5a617608def066`  
		Last Modified: Mon, 01 Aug 2016 17:18:00 GMT  
		Size: 8.2 MB (8220100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09dcfe7e089907706efc38f7b16efc9e14ce6ba61a14a86b911546b116b88bc`  
		Last Modified: Mon, 01 Aug 2016 17:17:55 GMT  
		Size: 101.0 KB (100990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6210a134405fe4049de41b9679f1930bce5142716d6862da1dad078c889ac675`  
		Last Modified: Mon, 01 Aug 2016 23:27:47 GMT  
		Size: 26.1 MB (26140944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b189715ec35e27ab5aa7e9858de631117883d1e3b62ee69d2a8fe651337899`  
		Last Modified: Mon, 01 Aug 2016 23:27:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a578ab3b5cebdf9b8889fdaa98ba45d6cb3ab52400de05a2666e839a1cbe112`  
		Last Modified: Mon, 01 Aug 2016 23:27:39 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15738e1b8391fcbe58e4e2f1a64444961305f04f8c7efb3ef226a43dcd56959`  
		Last Modified: Mon, 22 Aug 2016 19:22:01 GMT  
		Size: 1.8 KB (1759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099ad23ced3c0e9949749e07d043b24d3e1ed448308e9a934a21432a5ff4f74b`  
		Last Modified: Mon, 22 Aug 2016 19:22:01 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
