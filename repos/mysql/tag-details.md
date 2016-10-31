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
$ docker pull mysql@sha256:59a96842134649b9479a5168718fd03f7fcef3d6d4d5e8dbb30b8bd100dcecba
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129651744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c372d77578bf937bec7a586bd2d1ed708b92070ebf93261966da3b9510f7838`
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
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:06:34 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 21 Oct 2016 22:06:35 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Fri, 21 Oct 2016 22:06:36 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:06:57 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:06:58 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 21 Oct 2016 22:06:59 GMT
VOLUME [/var/lib/mysql]
# Fri, 21 Oct 2016 22:06:59 GMT
COPY file:9eb04476822a578333892824948d1b65db598c9338b74030dec17808b490c956 in /usr/local/bin/ 
# Fri, 21 Oct 2016 22:07:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Oct 2016 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Oct 2016 22:07:01 GMT
EXPOSE 3306/tcp
# Fri, 21 Oct 2016 22:07:01 GMT
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
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730202b1d7714f065ddb4bb5e5f2f79bca4276f4b499331b835c7c251f43552`  
		Last Modified: Fri, 21 Oct 2016 22:07:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a542801f024741405fe7d97f990dcfb7e1921f0741bdf25d081bb13e33c2fda7`  
		Last Modified: Fri, 21 Oct 2016 22:07:32 GMT  
		Size: 68.8 MB (68810174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd412abc42790402b131cdecb9a083b32670fe4f2484531f8f550a5668e0656`  
		Last Modified: Fri, 21 Oct 2016 22:07:11 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c6d134f80faf54e758c7ff8b1c986bbe56b78ec3a76f48e8b4e561f1531ca7`  
		Last Modified: Fri, 21 Oct 2016 22:07:11 GMT  
		Size: 1.8 KB (1824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4ede703c8573f21d22252309db94ea911a2fa45f63353af30c1eb8457756e3`  
		Last Modified: Fri, 21 Oct 2016 22:07:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:4c1f4054b541b89aa46195d7c8e8b4fbdea74284f30f0ac69219a6346f830f46
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129651750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beda74ed960717e54afc1095ce3e6f6a0a36c2b6dfd3bfa2e16a43cb992b3db2`
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
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:06:34 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 21 Oct 2016 22:06:35 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Fri, 21 Oct 2016 22:06:36 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:06:57 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:06:58 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 21 Oct 2016 22:06:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:20:59 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:01 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:01 GMT
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
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730202b1d7714f065ddb4bb5e5f2f79bca4276f4b499331b835c7c251f43552`  
		Last Modified: Fri, 21 Oct 2016 22:07:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a542801f024741405fe7d97f990dcfb7e1921f0741bdf25d081bb13e33c2fda7`  
		Last Modified: Fri, 21 Oct 2016 22:07:32 GMT  
		Size: 68.8 MB (68810174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd412abc42790402b131cdecb9a083b32670fe4f2484531f8f550a5668e0656`  
		Last Modified: Fri, 21 Oct 2016 22:07:11 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926a604a56f626f34f080061bffb715c5d520494deb1a9db8f0955b59026e452`  
		Last Modified: Mon, 31 Oct 2016 22:21:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99e07253f63a01a4a45861dbfa169fc9ebb1ddef0805dd21a3f731bfb440039`  
		Last Modified: Mon, 31 Oct 2016 22:21:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:4c1f4054b541b89aa46195d7c8e8b4fbdea74284f30f0ac69219a6346f830f46
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129651750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beda74ed960717e54afc1095ce3e6f6a0a36c2b6dfd3bfa2e16a43cb992b3db2`
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
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:06:34 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 21 Oct 2016 22:06:35 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Fri, 21 Oct 2016 22:06:36 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:06:57 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:06:58 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 21 Oct 2016 22:06:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:20:59 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:01 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:01 GMT
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
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730202b1d7714f065ddb4bb5e5f2f79bca4276f4b499331b835c7c251f43552`  
		Last Modified: Fri, 21 Oct 2016 22:07:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a542801f024741405fe7d97f990dcfb7e1921f0741bdf25d081bb13e33c2fda7`  
		Last Modified: Fri, 21 Oct 2016 22:07:32 GMT  
		Size: 68.8 MB (68810174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd412abc42790402b131cdecb9a083b32670fe4f2484531f8f550a5668e0656`  
		Last Modified: Fri, 21 Oct 2016 22:07:11 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926a604a56f626f34f080061bffb715c5d520494deb1a9db8f0955b59026e452`  
		Last Modified: Mon, 31 Oct 2016 22:21:20 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99e07253f63a01a4a45861dbfa169fc9ebb1ddef0805dd21a3f731bfb440039`  
		Last Modified: Mon, 31 Oct 2016 22:21:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.16`

```console
$ docker pull mysql@sha256:83d00ccce1f44f0e101d33672535556eb55cc890ee122099aac27d37b5bda6d8
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.16` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131616816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6245a569970e3960906351ab9878266a5b760f527ee057a8f9ca595dcadaae`
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
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 21 Oct 2016 22:02:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:02:24 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:02:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 21 Oct 2016 22:02:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:02 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:04 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:04 GMT
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
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe147754144da915c0218c231a707685df2694255c7e4a40d0ec7b88a227864`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0de826b14cd6e4c7878ab071e4a52708aa3b60ba6a6e2757afe33b06c47283`  
		Last Modified: Fri, 21 Oct 2016 22:02:58 GMT  
		Size: 70.8 MB (70775189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f101168f9e7dbcf72b094a2ef37d32a7f1645a0b92e853e3dbd8412a2a75ee`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8890f85049ea738767735fc167c769f3918558ae36b314e12b52fa4d03d6b367`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c07e303ec7ae0612f0c91b7a4f4413551783e4db212bf0a4a451bd52958fad`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:83d00ccce1f44f0e101d33672535556eb55cc890ee122099aac27d37b5bda6d8
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131616816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6245a569970e3960906351ab9878266a5b760f527ee057a8f9ca595dcadaae`
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
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 21 Oct 2016 22:02:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:02:24 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:02:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 21 Oct 2016 22:02:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:02 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:04 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:04 GMT
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
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe147754144da915c0218c231a707685df2694255c7e4a40d0ec7b88a227864`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0de826b14cd6e4c7878ab071e4a52708aa3b60ba6a6e2757afe33b06c47283`  
		Last Modified: Fri, 21 Oct 2016 22:02:58 GMT  
		Size: 70.8 MB (70775189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f101168f9e7dbcf72b094a2ef37d32a7f1645a0b92e853e3dbd8412a2a75ee`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8890f85049ea738767735fc167c769f3918558ae36b314e12b52fa4d03d6b367`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c07e303ec7ae0612f0c91b7a4f4413551783e4db212bf0a4a451bd52958fad`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:83d00ccce1f44f0e101d33672535556eb55cc890ee122099aac27d37b5bda6d8
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131616816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6245a569970e3960906351ab9878266a5b760f527ee057a8f9ca595dcadaae`
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
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 21 Oct 2016 22:02:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:02:24 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:02:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 21 Oct 2016 22:02:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:02 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:04 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:04 GMT
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
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe147754144da915c0218c231a707685df2694255c7e4a40d0ec7b88a227864`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0de826b14cd6e4c7878ab071e4a52708aa3b60ba6a6e2757afe33b06c47283`  
		Last Modified: Fri, 21 Oct 2016 22:02:58 GMT  
		Size: 70.8 MB (70775189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f101168f9e7dbcf72b094a2ef37d32a7f1645a0b92e853e3dbd8412a2a75ee`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8890f85049ea738767735fc167c769f3918558ae36b314e12b52fa4d03d6b367`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c07e303ec7ae0612f0c91b7a4f4413551783e4db212bf0a4a451bd52958fad`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:83d00ccce1f44f0e101d33672535556eb55cc890ee122099aac27d37b5bda6d8
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131616816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6245a569970e3960906351ab9878266a5b760f527ee057a8f9ca595dcadaae`
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
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 21 Oct 2016 22:02:03 GMT
ENV MYSQL_VERSION=5.7.16-1debian8
# Fri, 21 Oct 2016 22:02:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:02:24 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:02:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf 	&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
# Fri, 21 Oct 2016 22:02:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:02 GMT
COPY file:3b4c92796fc77cf494f358e29434e3ae3fd425522d6755b94773443b411169f6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:04 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:04 GMT
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
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe147754144da915c0218c231a707685df2694255c7e4a40d0ec7b88a227864`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0de826b14cd6e4c7878ab071e4a52708aa3b60ba6a6e2757afe33b06c47283`  
		Last Modified: Fri, 21 Oct 2016 22:02:58 GMT  
		Size: 70.8 MB (70775189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f101168f9e7dbcf72b094a2ef37d32a7f1645a0b92e853e3dbd8412a2a75ee`  
		Last Modified: Fri, 21 Oct 2016 22:02:37 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8890f85049ea738767735fc167c769f3918558ae36b314e12b52fa4d03d6b367`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c07e303ec7ae0612f0c91b7a4f4413551783e4db212bf0a4a451bd52958fad`  
		Last Modified: Mon, 31 Oct 2016 22:22:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.34`

```console
$ docker pull mysql@sha256:4976126031495e083ce9137b72dd1c5416e300a91ecad825a6f5379881326c8a
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.34` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112608277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7fe8a7034a91f8f0309a18e46b9de275a159930afba40eed3f8e88a115387ec`
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
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:05:24 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 21 Oct 2016 22:05:24 GMT
ENV MYSQL_VERSION=5.6.34-1debian8
# Fri, 21 Oct 2016 22:05:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:05:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:05:45 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 21 Oct 2016 22:05:45 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:05 GMT
COPY file:cda007baf84395bb3d546732cef80265371cef33ce2575a909b2c9e58167e3d6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:06 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:07 GMT
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
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892bfb27c685130356345f97998fa7c948e84c2ddc76e95415b456e13ee962e2`  
		Last Modified: Fri, 21 Oct 2016 22:05:58 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02874ec7a2dc7e1c850a96836930a9da47b1700c8e7b6c1f0ee865a0d6a97020`  
		Last Modified: Fri, 21 Oct 2016 22:06:14 GMT  
		Size: 51.8 MB (51766335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861c1296cc0d13d07a19e1f225a5dc356d3191bf7cbe7c603199f112215d5a2a`  
		Last Modified: Fri, 21 Oct 2016 22:05:57 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a1ec1bfc0ae07ae82d07528ab2c7b0a0b8614b6f38cb85806db259323e8cf`  
		Last Modified: Mon, 31 Oct 2016 22:22:53 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2c29307dcd4b66aee360a1af90a28158ee679b1a9a3f9214e0899484933aa5`  
		Last Modified: Mon, 31 Oct 2016 22:22:54 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:4976126031495e083ce9137b72dd1c5416e300a91ecad825a6f5379881326c8a
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112608277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7fe8a7034a91f8f0309a18e46b9de275a159930afba40eed3f8e88a115387ec`
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
# Fri, 21 Oct 2016 22:01:59 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:02:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Fri, 21 Oct 2016 22:05:24 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 21 Oct 2016 22:05:24 GMT
ENV MYSQL_VERSION=5.6.34-1debian8
# Fri, 21 Oct 2016 22:05:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 21 Oct 2016 22:05:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:05:45 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 21 Oct 2016 22:05:45 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:05 GMT
COPY file:cda007baf84395bb3d546732cef80265371cef33ce2575a909b2c9e58167e3d6 in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:06 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:07 GMT
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
	-	`sha256:3828a16bed5c23edf6098ccc822d240cd5195fae03292fa7978ea065c4de9830`  
		Last Modified: Fri, 21 Oct 2016 22:02:44 GMT  
		Size: 8.2 MB (8247927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91763f6b4ee133d66957d790a29547e065ca8055a4e5f43211168c6b5b6257`  
		Last Modified: Fri, 21 Oct 2016 22:02:40 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892bfb27c685130356345f97998fa7c948e84c2ddc76e95415b456e13ee962e2`  
		Last Modified: Fri, 21 Oct 2016 22:05:58 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02874ec7a2dc7e1c850a96836930a9da47b1700c8e7b6c1f0ee865a0d6a97020`  
		Last Modified: Fri, 21 Oct 2016 22:06:14 GMT  
		Size: 51.8 MB (51766335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861c1296cc0d13d07a19e1f225a5dc356d3191bf7cbe7c603199f112215d5a2a`  
		Last Modified: Fri, 21 Oct 2016 22:05:57 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a1ec1bfc0ae07ae82d07528ab2c7b0a0b8614b6f38cb85806db259323e8cf`  
		Last Modified: Mon, 31 Oct 2016 22:22:53 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2c29307dcd4b66aee360a1af90a28158ee679b1a9a3f9214e0899484933aa5`  
		Last Modified: Mon, 31 Oct 2016 22:22:54 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.53`

```console
$ docker pull mysql@sha256:37b5e4a87849bcc142318e6c034cec946cbe8956532d3b56ba9237d46ea9afbd
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.53` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87395560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73d26c9c8f9ab88839d5a051629781f3d3b6fe9009c87e853e96bec3b50790a`
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
# Fri, 21 Oct 2016 22:03:44 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:03:49 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:03:50 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 21 Oct 2016 22:03:50 GMT
ENV MYSQL_VERSION=5.5.53
# Fri, 21 Oct 2016 22:04:40 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 21 Oct 2016 22:04:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 21 Oct 2016 22:04:41 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 21 Oct 2016 22:04:42 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:04:43 GMT
VOLUME [/var/lib/mysql]
# Fri, 21 Oct 2016 22:04:43 GMT
COPY file:7d52eb36eb3f1396d87c264f1522352fd8906b68fefaa4c9a5147fe36ef318a8 in /usr/local/bin/ 
# Fri, 21 Oct 2016 22:04:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Oct 2016 22:04:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Oct 2016 22:04:45 GMT
EXPOSE 3306/tcp
# Fri, 21 Oct 2016 22:04:45 GMT
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
	-	`sha256:a4485a0f7ab0cc305020e7825064ab4958e3778727479c474a64e4a01fa91ecd`  
		Last Modified: Fri, 21 Oct 2016 22:05:01 GMT  
		Size: 8.2 MB (8219804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aefc1bb8d8780195b137957929c4020a42a9221daddea1397a3d31901ddc5c`  
		Last Modified: Fri, 21 Oct 2016 22:04:57 GMT  
		Size: 100.8 KB (100767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7412e4c8021ea4ce4afed10081ccc5b42d9276782fa4013f7e75a7f3bce8d9`  
		Last Modified: Fri, 21 Oct 2016 22:05:05 GMT  
		Size: 26.5 MB (26500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712158d59cb9b0f523fb0664c5174eaa4ad757e035789797fd0d58566fb706f2`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4883770aaa62640fa266a9a1301a8c8c57671d057134ce7798cc5b0b6438154`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824db147a9aa1002c99a553cfb645b7e331b59d99ecb28e553824c4f6b639ac`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ff962b08b0a595027110ce396ed511d2c7988f7f121b1c8e26b959bf417d8c`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:65b5646dc1b1522ab992ab833604385332c93049d453ddb0a9af0d15628128fb
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87395564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f468d5c6501a8a4d4b1a033ffbb0f3ac40aa3ec2abd206eedd8940da6ed2e7`
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
# Fri, 21 Oct 2016 22:03:44 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:03:49 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:03:50 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 21 Oct 2016 22:03:50 GMT
ENV MYSQL_VERSION=5.5.53
# Fri, 21 Oct 2016 22:04:40 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 21 Oct 2016 22:04:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 21 Oct 2016 22:04:41 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 21 Oct 2016 22:04:42 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 21 Oct 2016 22:04:43 GMT
VOLUME [/var/lib/mysql]
# Mon, 31 Oct 2016 22:21:08 GMT
COPY file:6043e9c7818db478624a89023dcfb9c06258577c0dc050e435bfae209bfe73db in /usr/local/bin/ 
# Mon, 31 Oct 2016 22:21:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Oct 2016 22:21:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 22:21:09 GMT
EXPOSE 3306/tcp
# Mon, 31 Oct 2016 22:21:10 GMT
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
	-	`sha256:a4485a0f7ab0cc305020e7825064ab4958e3778727479c474a64e4a01fa91ecd`  
		Last Modified: Fri, 21 Oct 2016 22:05:01 GMT  
		Size: 8.2 MB (8219804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aefc1bb8d8780195b137957929c4020a42a9221daddea1397a3d31901ddc5c`  
		Last Modified: Fri, 21 Oct 2016 22:04:57 GMT  
		Size: 100.8 KB (100767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7412e4c8021ea4ce4afed10081ccc5b42d9276782fa4013f7e75a7f3bce8d9`  
		Last Modified: Fri, 21 Oct 2016 22:05:05 GMT  
		Size: 26.5 MB (26500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712158d59cb9b0f523fb0664c5174eaa4ad757e035789797fd0d58566fb706f2`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4883770aaa62640fa266a9a1301a8c8c57671d057134ce7798cc5b0b6438154`  
		Last Modified: Fri, 21 Oct 2016 22:04:55 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c73e0883df503782a7bd9eda034cbe70a92abcbd43643e05cad7f7f822a34d5`  
		Last Modified: Mon, 31 Oct 2016 22:23:21 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b355016737a871d448fcb231e4aebb7b2320392dbabb2f314a4dc8fb489b0af`  
		Last Modified: Mon, 31 Oct 2016 22:23:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
